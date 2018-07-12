{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hspec-meta";
          version = "1.9.1";
        };
        license = "MIT";
        copyright = "(c) 2011-2014 Simon Hengel,\n(c) 2011-2012 Trystan Spangler,\n(c) 2011 Greg Weber";
        maintainer = "Simon Hengel <sol@typeful.net>";
        author = "";
        homepage = "http://hspec.github.io/";
        url = "";
        synopsis = "A version of Hspec which is used to test Hspec itself";
        description = "A stable version of Hspec which is used to test the\nin-development version of Hspec.";
        buildType = "Simple";
      };
      components = {
        "hspec-meta" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.tf-random
            hsPkgs.setenv
            hsPkgs.ansi-terminal
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.deepseq
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-io
            hsPkgs.hspec-expectations
          ];
        };
        exes = {
          "hspec-meta-discover" = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }