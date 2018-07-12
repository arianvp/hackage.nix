{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avers";
          version = "0.0.5";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "empty";
        description = "empty";
        buildType = "Simple";
      };
      components = {
        "avers" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.MonadRandom
            hsPkgs.base16-bytestring
            hsPkgs.cryptohash
            hsPkgs.inflections
            hsPkgs.influxdb
            hsPkgs.resource-pool
            hsPkgs.rethinkdb-client-driver
            hsPkgs.scrypt
          ];
        };
      };
    }