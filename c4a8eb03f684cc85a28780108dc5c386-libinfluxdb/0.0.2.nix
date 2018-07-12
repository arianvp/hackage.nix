{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libinfluxdb";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "libinfluxdb";
        description = "libinfluxdb";
        buildType = "Simple";
      };
      components = {
        "libinfluxdb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.clock
            hsPkgs.containers
            hsPkgs.resource-pool
            hsPkgs.stm
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-client-tls
          ];
        };
      };
    }