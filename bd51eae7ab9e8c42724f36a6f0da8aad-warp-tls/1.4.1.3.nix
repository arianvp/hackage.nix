{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp-tls";
          version = "1.4.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "HTTP over SSL/TLS support for Warp via the TLS package";
        description = "HTTP over SSL/TLS support for Warp via the TLS package.";
        buildType = "Simple";
      };
      components = {
        "warp-tls" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.warp
            hsPkgs.transformers
            hsPkgs.conduit
            hsPkgs.network-conduit
            hsPkgs.certificate
            hsPkgs.pem
            hsPkgs.cryptocipher
            hsPkgs.tls-extra
            hsPkgs.tls
            hsPkgs.crypto-random-api
            hsPkgs.network
            hsPkgs.cprng-aes
          ];
        };
      };
    }