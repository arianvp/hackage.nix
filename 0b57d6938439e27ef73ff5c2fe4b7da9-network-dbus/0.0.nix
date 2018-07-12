{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "network-dbus";
          version = "0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Dafydd Harries";
        author = "Will Thompson, Dafydd Harries";
        homepage = "";
        url = "";
        synopsis = "D-Bus";
        description = "D-Bus protocol library";
        buildType = "Custom";
      };
      components = {
        "network-dbus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.unix
            hsPkgs.utf8-string
          ];
        };
      };
    }