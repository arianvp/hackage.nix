{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Numbers";
          version = "0.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "aneumann@inf.fu-berlin.de";
        author = "Adrian Neumann";
        homepage = "";
        url = "";
        synopsis = "An assortment of number theoretic functions";
        description = "Functions for finding prime numbers, checking whether a number is prime, finding the factors of a number etc.";
        buildType = "Simple";
      };
      components = {
        "Numbers" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }