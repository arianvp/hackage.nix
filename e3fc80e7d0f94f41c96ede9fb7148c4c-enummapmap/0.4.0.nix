{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "enummapmap";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Matthew West";
        author = "Matthew West and authors of containers v5.0";
        homepage = "";
        url = "";
        synopsis = "Map of maps using Enum types as keys";
        description = "This package provides 'maps of maps' using Enum types as\nkeys.  The code is based upon Data.IntMap in\ncontainers 5.0.";
        buildType = "Simple";
      };
      components = {
        "enummapmap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          "test-enummapmap-lazy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.deepseq
              hsPkgs.enummapmap
            ];
          };
          "test-enummapmap-intmap-lazy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.enummapmap
            ];
          };
          "test-enummapmap-strict" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.deepseq
              hsPkgs.enummapmap
            ];
          };
          "test-enummapmap-intmap-strict" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.enummapmap
            ];
          };
          "test-enummapset-intset" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.hspec
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.enummapmap
            ];
          };
        };
        benchmarks = {
          "enummapmap-vs-intmap-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.enummapmap
            ];
          };
        };
      };
    }