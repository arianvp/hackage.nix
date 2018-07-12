{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hspec-discover";
          version = "2.1.7";
        };
        license = "MIT";
        copyright = "(c) 2012-2015 Simon Hengel";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "Simon Hengel <sol@typeful.net>";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "Automatically discover and run Hspec tests";
        description = "Automatically discover and run Hspec tests\n\n<http://hspec.github.io/hspec-discover.html>";
        buildType = "Simple";
      };
      components = {
        "hspec-discover" = {};
        exes = {
          "hspec-discover" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hspec-meta
            ];
          };
        };
      };
    }