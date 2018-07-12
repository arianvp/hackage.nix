{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dph-prim-interface";
          version = "0.5.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@cse.unsw.edu.au>";
        author = "The DPH Team";
        homepage = "http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell";
        url = "";
        synopsis = "Backend Interface for Data Parallel Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        "dph-prim-interface" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.dph-base
          ];
        };
      };
    }