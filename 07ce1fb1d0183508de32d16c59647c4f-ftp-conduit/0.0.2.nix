{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ftp-conduit";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        homepage = "https://github.com/litherum/ftp-conduit";
        url = "";
        synopsis = "FTP client package with conduit interface based off http-conduit";
        description = "This package allows files on remote FTP servers to be available through the Conduit interface.";
        buildType = "Simple";
      };
      components = {
        "ftp-conduit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.MissingH
            hsPkgs.mtl
            hsPkgs.byteorder
            hsPkgs.utf8-string
          ];
        };
      };
    }