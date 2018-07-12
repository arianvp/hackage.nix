{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hoauth";
          version = "0.3.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Diego Souza <dsouza at bitforest.org>";
        author = "Diego Souza";
        homepage = "";
        url = "";
        synopsis = "A Haskell implementation of OAuth 1.0a protocol.";
        description = "This library implements all PLAINTEXT, HMAC-SHA1 and RSA-SHA1\nsignatures as defined in the specification 1.0. Currently it\nsupports only /consumer/ related functions, but there are plans to\nadd support /service providers/ as well.\nMore on OAuth protocol info at: <http://oauth.net/>";
        buildType = "Simple";
      };
      components = {
        "hoauth" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.crypto-pubkey-types
            hsPkgs.binary
            hsPkgs.SHA
            hsPkgs.dataenc
            hsPkgs.utf8-string
            hsPkgs.time
            hsPkgs.old-locale
            hsPkgs.random
            hsPkgs.curl
            hsPkgs.mtl
            hsPkgs.RSA
            hsPkgs.entropy
          ];
        };
      };
    }