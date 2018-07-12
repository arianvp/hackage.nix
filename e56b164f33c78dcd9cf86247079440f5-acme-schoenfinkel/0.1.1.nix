{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-schoenfinkel";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Proper names for curry and uncurry";
        description = "This package implements curry and uncurry with their proper names:\nschoen and unschoen.";
        buildType = "Simple";
      };
      components = {
        "acme-schoenfinkel" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.acme-schoenfinkel
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }