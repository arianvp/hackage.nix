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
        version = "0.41.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Pure Haskell PostScript and SVG generation.";
      description = "\nWumpus-Core is a low-level library for generating static 2D\nvector pictures, its salient feature is portability due to no\nFFI dependencies. It can generate PostScript (EPS) files and SVG\nfiles. The generated PostScript code is plain and reasonably\nefficient as the use of stack operations, i.e @gsave@ and\n@grestore@, is minimized.\n\nAlthough Wumpus-Core only generates vector output, the generated\nPostScript can be interpreted by GraphicsMagick or a similar\ntool to convert EPS files into bitmap image files (e.g JPEGs).\n\nWumpus-Core makes pictures from /paths/ and text /labels/. Paths\nthemselves are made from points. The usual affine\ntransformations (rotations, scaling, translations) can be\napplied to Pictures. Unlike PostScript there is no notion of a\ncurrent point, Wumpus-Core builds pictures in a coordinate-free\nstyle.\n\nGENERAL DRAWBACKS...\n\nFor actually building pictures, diagrams, etc. Wumpus-Core is\nvery low-level. There is a supplementary package @Wumpus-Basic@\navailable that helps create certain types of diagram, but it is\nexperimental - functionality is added and dropped between\nreleases, it has no stable API.\n\nSome of the design decisions made for Wumpus-Core are not\nsophisticated (e.g. how path and text attributes like colour are\nhandled, and how the bounding boxes of text labels are\ncalculated), so Wumpus might be limited compared to other\nsystems. However, the design permits a fairly simple\nimplementation, which is a priority.\n\n\nUPDATING from 0.37.0 or earlier to 0.41.0.\n\nThere were substantial changes in verion 0.40.0 - hence the\nversion number jump from 0.37.0. Version 0.41.0 introduces\nmostly cosmetic changes, but for upgrading from 0.37.0 or\nearlier the change-notes that follow are still relevant.\n\n@Core.Picture@ API change - the path construction function has\nchanged from @path@ to @primPath@. The type of the path segments\nhas changed, the functions @lineTo@ and @curveTo@ now build\n@AbsPathSegments@ and @primPath@ consumes @AbsPathSegments@.\n\nThe Text API has changed substantially, however most user code\nshould only need minor changes. The functions @writePS_latin1@,\n@writeEPS_latin1@ and @writeSVG_latin1@ have been removed, code\nshould be changed to use @writePS@, @writeEPS@ and and\n@writeSVG@ respectively. These three functions no longer take a\n@TextEncoder@ argument as TextEncoders no longer exist.\n\nThe Font Size API has also changed substantially. It now\nexports a more consistent set of metrics (consistent with what\nis present in font files - the previous version was derived\nfrom hand measurements). It also adds a margin to bounding box\ncalculations, again this is more consistent with how font files\nactually work.\n\nThe handling of escaped special characters is now more\nconsistent and the escaping mecahnism has been clarified\n(previously the documentation and the implementation were at\nodds): PostScript glyph names are delimited between @&@\n(ampersand) and @;@ (semi), Unicode code points are delimited\nby @&\\#@ (ampersand-hash) and @;@ (semi). Note Wumpus silently\ndrops mal-formed escape charcters, for robustness this is\npreferable to throwing a runtime error, but it does mean the\noutput needs visually checking.\n\nChangelog:\n\nv0.40.0 to v0.41.0:\n\n* Changed PostScript output to use pre-defined procedures for\ncircles and ellipses. This should be a significant\noptimization for drawings that have many circles or ellipses.\nFor drawings that do not use circles or ellipses, it adds\ncirca. 75 lines to the generated PostScript which is\ntolerable.\n\n* API change - @Core.Text.Base@ no longer exports the\nconstructor and field label for @EscapedText@, it is now an\nopaque type. For a building @EscapedText@ either the existing\n/safe/constructor @escapeString@ or the new function\n@wrapEscChar@ should be used. For destructing @EscapedText@\nthere is a new function @destrEscapedText@.\n\n* API change - the argument order of the functions @rtextlabel@\nand @rescapedlabel@ in @Core.Picture@ has changed. The order\nof angle of rotation and the baseline-left has been swapped so\nthat angle of rotation is first. This matches the other\nrotated graphics in @Core.Picture@.\n\n* Upper bounds of Cabal build depends relaxed a bit.\n\n* Added the @UNil@ type to @Core.Geometry@ and added affine\ninstances for the UNil type, plus Maybe and Pair. @UNil@ is\nuseful for higher-level drawing (it is used extensively in\nWumpus-Basic).\n\n* Added the function @emptyPath@ to @Core.Picture@. This creates\na /null path/ with an empty list of path segments. Null paths\nstill need a start point - this is minimum needed for bounding\nbox calculation. Improved the PostScript and SVG output so\nthere is no code generated for empty paths and textlabels.\n\n* Added @vectorPath@ to @Core.Picture@.\n\n* Added @boundaryCenter@ to @Core.BoundingBox@.\n\n* Improved generated SVG code generation for ellipses / circles.\n\nv0.37.0 to v0.40.0:\n\n* Text handling substantially revised. SVG text output is now\nbetter aligned to Unicode. The encoding tables for PostScript\nhave been re-thought, the previous implementation had some\nserious design flaws that should now be rectified.\n\n* The rules for escaping special characters has been clarified.\nPreviously the documentation suggested\n@ampersand-name-semicolon@ could be used to escape glyph names\nhowever only @ampersand-hash-name-semicolon@ worked.\n@ampersand-name-semicolon@ is now the correct way. The\nampersand-hash prefix is for numeric literals -\n@ampersand-hash-num_literal-semicolon@.\n\n* Versions of the textlabel functions have been added to\n@Core.Picture@ for escape-parsed text. It is useful for\nhigher-level software to escape the text, do some calculations\nthen render it - going back to un-escaped text for the\nrendering would be inefficient.\n\n* The internal representation of paths has changed. They are now\nrepresented as start-point plus list of /relative/ path\nsegments rather than start-point plus list of absolute path\nsegments. Using relative path segments makes it cheaper to\nmove paths with @translate@, although calculating the bounding\nbox and rendering to PostScript is more expensive. The\nrationale for the change is that to make complex pictures,\npaths are potentially moved many times but the other\noperations are only performed once.\n\n* Internal change to Primitives and the PrimCTM - ellipses and\nlabels no longer have a point (center or baseline left)\nas an element in the datatype, the point is now represented\nwithin the PrimCTM.\n\n* Name change to @Core.Picture@ API - the path construction\nfunction @path@ has been renamed to @primPath@.\n\n* Name change in @Core.FontSize@, the function @textBoundsEnc@\nhas been renamed to @textBoundsEsc@. Wumpus-Core now calls\nstrings that have been parsed for escape characters\n/Escaped Text/ rather than /Encoded Text/.\n\n* Fixed bug where ellipse rotation and scaling calculated the\nwrong bounding box.\n\n* Fixed bug in @illustrateControlPoints@ where the control points\nwere drawn but the original primitive was lost.\n\n* Added initial support for arbitrary SVG attributes (e.g.\nonmouseover handlers) via @annotateGroup@ in @Core.Picture@.\nArbitrary SVG \\\"defs\\\" can be written into the defs prologue\nby using @writeSVG_defs@ instead of @writeSVG@. This\nfunctionality is mostly untested!\n\n";
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