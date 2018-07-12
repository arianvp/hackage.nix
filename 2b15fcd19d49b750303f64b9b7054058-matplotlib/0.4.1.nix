{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "matplotlib";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Andrei Barbu";
        maintainer = "andrei@0xab.com";
        author = "Andrei Barbu";
        homepage = "https://github.com/abarbu/matplotlib-haskell";
        url = "";
        synopsis = "Bindings to Matplotlib; a Python plotting library";
        description = "Matplotlib is probably the most full featured plotting library out there.\nThese bindings provide a quick, easy, and extensible way to use it in\nHaskell.\n\n<<https://github.com/abarbu/matplotlib-haskell/raw/master/imgs/contour.png>>\n\n> onscreen \$ contourF (\\a b -> sin (degreesRadians a) + cos (degreesRadians b)) (-100) 100 (-200) 200 10";
        buildType = "Simple";
      };
      components = {
        "matplotlib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.temporary
            hsPkgs.containers
          ];
        };
        tests = {
          "matplotlib-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.matplotlib
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-expected-failure
              hsPkgs.tasty-golden
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.temporary
              hsPkgs.random
              hsPkgs.raw-strings-qq
              hsPkgs.split
              hsPkgs.ad
            ];
          };
        };
      };
    }