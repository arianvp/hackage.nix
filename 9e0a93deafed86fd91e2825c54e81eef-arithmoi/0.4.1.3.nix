{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arithmoi";
          version = "0.4.1.3";
        };
        license = "MIT";
        copyright = "(c) 2011 Daniel Fischer";
        maintainer = "Carter Schonwald  carter at wellposed dot com";
        author = "Daniel Fischer";
        homepage = "https://github.com/cartazio/arithmoi";
        url = "";
        synopsis = "Efficient basic number-theoretic functions.\nPrimes, powers, integer logarithms.";
        description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation),\ninteger logarithms.\nNote: Requires GHC >= 6.12 with the integer-gmp package\nfor efficiency. Portability is on the to-do list (with\nlow priority, however).";
        buildType = "Simple";
      };
      components = {
        "arithmoi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.ghc-prim
            hsPkgs.integer-gmp
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.mtl
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.arithmoi
            ];
          };
        };
        benchmarks = {
          "criterion" = {
            depends  = [
              hsPkgs.base
              hsPkgs.arithmoi
              hsPkgs.criterion
            ];
          };
        };
      };
    }