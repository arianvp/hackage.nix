{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plocketed";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "sen.cenan@gmail.com";
        author = "sen.cenan@gmail.com";
        homepage = "";
        url = "";
        synopsis = "plot data from stdin through socketed";
        description = "plot data from stdin through socketed";
        buildType = "Simple";
      };
      components = {
        exes = {
          "plocketed" = {
            depends  = [
              hsPkgs.base
              hsPkgs.socketed
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }