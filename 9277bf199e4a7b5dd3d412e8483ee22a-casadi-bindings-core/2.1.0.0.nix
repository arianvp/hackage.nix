{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "casadi-bindings-core";
          version = "2.1.0.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(c) 2013-2014 Greg Horn";
        maintainer = "gregmainland@gmail.com";
        author = "Greg Horn";
        homepage = "";
        url = "";
        synopsis = "low level bindings to casadi-core";
        description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
        buildType = "Simple";
      };
      components = {
        "casadi-bindings-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.casadi-bindings-internal
          ];
          libs = [ pkgs."stdc++" ];
          pkgconfig = [
            pkgconfPkgs.casadi_core
          ];
        };
      };
    }