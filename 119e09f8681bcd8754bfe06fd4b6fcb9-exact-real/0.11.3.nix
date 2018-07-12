{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exact-real";
          version = "0.11.3";
        };
        license = "MIT";
        copyright = "2015 Joe Hermaszewski";
        maintainer = "Joe Hermaszewski <keep.it.real@monoid.al>";
        author = "Joe Hermaszewski";
        homepage = "http://github.com/expipiplus1/exact-real";
        url = "";
        synopsis = "Exact real arithmetic";
        description = "A type to represent exact real numbers using fast binary Cauchy sequences.";
        buildType = "Simple";
      };
      components = {
        "exact-real" = {
          depends  = [
            hsPkgs.base
            hsPkgs.integer-gmp
            hsPkgs.memoize
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.groups
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.checkers
              hsPkgs.random
              hsPkgs.exact-real
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.exact-real
            ];
          };
        };
      };
    }