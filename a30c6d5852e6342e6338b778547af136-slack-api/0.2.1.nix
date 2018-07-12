{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "slack-api";
          version = "0.2.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matthewtpickering@gmail.com";
        author = "Matthew Pickering";
        homepage = "";
        url = "";
        synopsis = "Bindings to the Slack RTM API.";
        description = "This library provides bindings to the <https://api.slack.com/rtm Slack Real Time Messaging API>.\nUsers should find it easy to program their own Slack bots using the functionality found in `Web.Slack`.\nThe bindings are very nearly complete. Library authors\nlooking to build bindings to the <https://api.slack.com/web Slack Web API> may\nfind the `FromJSON` instances located in `Web.Slack.Types`\nuseful.\nPlease note that the interface provided by this package is not yet stable. There are a number of unresolved\ninternal inconsistencies which have yet to be resolved by Slack HQ.";
        buildType = "Simple";
      };
      components = {
        "slack-api" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.websockets
            hsPkgs.wreq
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.network
            hsPkgs.openssl-streams
            hsPkgs.HsOpenSSL
            hsPkgs.io-streams
            hsPkgs.mtl
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.errors
            hsPkgs.monad-loops
            hsPkgs.transformers
          ];
        };
      };
    }