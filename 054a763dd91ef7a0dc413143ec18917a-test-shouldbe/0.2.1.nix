{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "test-shouldbe";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "(c) 2011, 2012 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "https://github.com/sol/test-shouldbe#readme";
        url = "";
        synopsis = "Catchy combinators for HUnit";
        description = "Catchy combinators for HUnit: <https://github.com/sol/test-shouldbe#readme>";
        buildType = "Simple";
      };
      components = {
        "test-shouldbe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.silently
              hsPkgs.hspec
              hsPkgs.hspec-discover
            ];
          };
        };
      };
    }