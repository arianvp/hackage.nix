{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      grid = false;
      mosaic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "rainbox";
          version = "0.10.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2014-2015 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://www.github.com/massysett/rainbox";
        url = "";
        synopsis = "Two-dimensional box pretty printing, with colors";
        description = "Prints boxes in two dimensions, with colors.  Boxes are\nautomatically padded with necessary whitespace.\n\nFor more information, please see the Haddock documentation and\n\n<http://www.github.com/massysett/rainbox>";
        buildType = "Simple";
      };
      components = {
        "rainbox" = {
          depends  = [
            hsPkgs.base
            hsPkgs.rainbow
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.array
          ];
        };
        exes = {
          "rainbox-mosaic" = {
            depends  = pkgs.lib.optionals _flags.mosaic [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.barecheck
              hsPkgs.ChasingBottoms
            ];
          };
          "rainbox-grid" = {
            depends  = pkgs.lib.optionals _flags.grid [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.barecheck
              hsPkgs.ChasingBottoms
            ];
          };
        };
        tests = {
          "rainbox-visual" = {
            depends  = [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.barecheck
              hsPkgs.ChasingBottoms
            ];
          };
          "rainbox-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.rainbow
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.array
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.barecheck
              hsPkgs.ChasingBottoms
            ];
          };
        };
      };
    }