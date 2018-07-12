{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "IOR";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tomac `at` pacific `dot` net `dot` au";
        author = "Ivan Tomac";
        homepage = "";
        url = "";
        synopsis = "Region based resource management for the IO monad.";
        description = "IOR monad is a wrapper around IO that allows region based\nresource management.";
        buildType = "Simple";
      };
      components = {
        "IOR" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }