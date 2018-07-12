{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "SSTG";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Anton Xue";
        maintainer = "anton.xue@yale.edu";
        author = "Anton Xue";
        homepage = "https://github.com/AntonXue/SSTG#readme";
        url = "";
        synopsis = "STG Symbolic Execution";
        description = "Prototype of STG-based Symbolic Execution for Haskell.";
        buildType = "Simple";
      };
      components = {
        "SSTG" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.containers
          ];
        };
        exes = {
          "SSTG-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SSTG
              hsPkgs.containers
            ];
          };
        };
        tests = {
          "SSTG-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SSTG
              hsPkgs.containers
            ];
          };
        };
      };
    }