{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-core";
        version = "0.37.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus is a low-level library for generating static 2D vector\npictures, its salient feature is portability due to no FFI\ndependencies. It can generate PostScript (EPS) files and SVG\nfiles. The generated PostScript code is plain [1] and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nWumpus makes pictures from /paths/ and text /labels/. Paths\nthemselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to Pictures. Unlike PostScript there is no\nnotion of a current point, Wumpus builds pictures in a\ncoordinate-free style.\n\nGENERAL DRAWBACKS...\n\nFor actually drawing pictures, diagrams, etc. Wumpus is very\nlow-level. There is a supplemantary package @wumpus-basic@\navailable that helps create certain types of diagram, but it is\nexperimental - functionality is added and dropped between\nreleases, it has no stable API.\n\nSome of the design decisions made for @wumpus-core@ are not\nsophisticated (e.g. how attributes like colour are handled,\nand how the bounding boxes of text labels are calculated), so\nWumpus might be limited compared to other systems. However,\nthe design permits a fairly simple implementation, which is a\npriority.\n\nNOTE version 0.37.0 - there will be no release of Wumpus-Basic\nto match this release of Wumpus-Core. Wumpus-Basic is\nundergoing substantial change to accommodate glyph metrics and\nthus enable proper text bounding boxes and right and center\naligned text. The improvements to Wumpus-Core merit a release\nso that there is not a large hiatus between the APIs of the\nHackage published latest version and the SVN repository.\n\n\n\\[1\\] Because the output is simple, straight-line PostScript\ncode, it is possible to use GraphicsMagick or a similar tool\nto convert EPS files generated by Wumpus to many other formats\n(bitmaps).\n\n\nChangelog:\n\n0.36.0 to 0.37.0:\n\n* The bounding box constructors have been renamed - @bbox@ is\nnow @boundingBox@ and @obbox@ becomes @oboundingBox@. The\nrationale for this change is that the names very cryptic in\nthe first place and the constructors are used infrequently\nwhen @bbox@ in particular makes a descriptive variable name.\n\n* Changes to the Picture and Primitive types to enable better\nconcatenation which is used heavily by Wumpus-Basic. The\nPicture API exposes a new function @primCat@.\n\n* SVG /font delta context/ change - font deltas are now\nannotated on Primitives not Pictures. The type of the\nfunction @fontDeltaContext@ in @Core.Picture@ has changed\naccordingly.\n\n* SVG hyperlink change - hyperlinks no longer group primitives\n(although a group of primitives can be hyperlinked). The\nfunction @xlinkGroup@ has been removed from @Core.Picture@,\nit is replaced by @xlink@. Primitives are now grouped with the\nfunction @primGroup@.\n\n* @Core.Picture@ - the argument order for the function\n@rtextlabel@ has been changed, the positions of the angle and\nbottom-left corner have been swapped.\n\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.vector-space)
        ];
      };
    };
  }