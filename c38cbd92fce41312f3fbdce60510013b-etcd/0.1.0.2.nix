{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "etcd";
          version = "0.1.0.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "tomas.carnecky@gmail.com";
        author = "Tomas Carnecky";
        homepage = "";
        url = "";
        synopsis = "Client for etcd, a highly-available key value store";
        description = "See <https://coreos.com/using-coreos/etcd/>";
        buildType = "Simple";
      };
      components = {
        "etcd" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.time
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.MonadRandom
              hsPkgs.base
              hsPkgs.etcd
              hsPkgs.hspec
              hsPkgs.mtl
            ];
          };
        };
      };
    }