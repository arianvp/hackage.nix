{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-memo";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eduard.Sergeev@gmail.com";
        author = "Eduard Sergeev";
        homepage = "http://code.google.com/p/monad-memo";
        url = "";
        synopsis = "Memoization monad transformer";
        description = "Memoization monad transformer supporting mutual recursive function definitions\nand most of the standard monad transformers";
        buildType = "Simple";
      };
      components = {
        "monad-memo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.QuickCheck
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework
            ];
          };
        };
      };
    }