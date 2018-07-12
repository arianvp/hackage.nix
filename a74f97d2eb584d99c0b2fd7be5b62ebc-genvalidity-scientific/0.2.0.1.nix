{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genvalidity-scientific";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
        maintainer = "syd.kerckhove@gmail.com";
        author = "Tom Sydney Kerckhove";
        homepage = "https://github.com/NorfairKing/validity#readme";
        url = "";
        synopsis = "GenValidity support for Scientific";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "genvalidity-scientific" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.genvalidity
            hsPkgs.scientific
            hsPkgs.validity
            hsPkgs.validity-scientific
          ];
        };
        tests = {
          "genvalidity-scientific-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.genvalidity
              hsPkgs.genvalidity-hspec
              hsPkgs.genvalidity-scientific
              hsPkgs.hspec
              hsPkgs.scientific
            ];
          };
        };
      };
    }