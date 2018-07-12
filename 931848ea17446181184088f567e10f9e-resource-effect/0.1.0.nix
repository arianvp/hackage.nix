{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "resource-effect";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cgaebel@uwaterloo.ca";
        author = "Clark Gaebel";
        homepage = "https://github.com/wowus/resource-effect/";
        url = "";
        synopsis = "A port of the package 'resourcet' for extensible effects.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "resource-effect" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.extensible-effects
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.containers
              hsPkgs.extensible-effects
              hsPkgs.mtl
              hsPkgs.resource-effect
            ];
          };
        };
      };
    }