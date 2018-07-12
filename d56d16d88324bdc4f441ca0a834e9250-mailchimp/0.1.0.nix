{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.21";
        identifier = {
          name = "mailchimp";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2016 Juan Pedro Villa Isaza";
        maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        homepage = "https://github.com/jpvillaisaza/mailchimp-haskell";
        url = "";
        synopsis = "Bindings for the MailChimp API";
        description = "Haskell bindings for the MailChimp API.";
        buildType = "Simple";
      };
      components = {
        "mailchimp" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }