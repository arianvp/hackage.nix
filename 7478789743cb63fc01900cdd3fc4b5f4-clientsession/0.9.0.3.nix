{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clientsession";
          version = "0.9.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>, Felipe Lessa <felipe.lessa@gmail.com>";
        homepage = "http://github.com/yesodweb/clientsession/tree/master";
        url = "";
        synopsis = "Securely store session data in a client-side cookie.";
        description = "Achieves security through AES-CTR encryption and\nSkein-MAC-512-256 authentication.  Uses Base64\nencoding to avoid any issues with characters.";
        buildType = "Simple";
      };
      components = {
        "clientsession" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.directory
            hsPkgs.tagged
            hsPkgs.crypto-api
            hsPkgs.skein
            hsPkgs.base64-bytestring
            hsPkgs.entropy
            hsPkgs.cprng-aes
            hsPkgs.cipher-aes
            hsPkgs.crypto-random
          ];
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.cereal
              hsPkgs.clientsession
            ];
          };
        };
      };
    }