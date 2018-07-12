{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-locale = false;
      bytestring_has_builder = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tttool";
          version = "1.4.0.3";
        };
        license = "MIT";
        copyright = "2013-2015 Joachim Breitner";
        maintainer = "mail@joachim-breitner.de";
        author = "Joachim Breitner";
        homepage = "https://github.com/entropia/tip-toi-reveng";
        url = "";
        synopsis = "Working with files for the Tiptoi® pen";
        description = "The Ravensburger Tiptoi® pen is programmed via special\nfiles. Their file format has been reverse engineered; this\nis a tool to analyse and create such files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tttool" = {
            depends  = (([
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.executable-path
              hsPkgs.filepath
              hsPkgs.template-haskell
              hsPkgs.JuicyPixels
              hsPkgs.aeson
              hsPkgs.hashable
              hsPkgs.haskeline
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.random
              hsPkgs.vector
              hsPkgs.yaml
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.5") hsPkgs.ghc-prim) ++ (if _flags.old-locale
              then [
                hsPkgs.time
                hsPkgs.old-locale
              ]
              else [
                hsPkgs.time
              ])) ++ (if _flags.bytestring_has_builder
              then [ hsPkgs.bytestring ]
              else [
                hsPkgs.bytestring
                hsPkgs.bytestring-builder
              ]);
          };
        };
      };
    }