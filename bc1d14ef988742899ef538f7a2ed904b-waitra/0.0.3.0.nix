{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "waitra";
          version = "0.0.3.0";
        };
        license = "MIT";
        copyright = "(c) 2015 Futurice";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/futurice/waitra";
        url = "";
        synopsis = "A very simple Wai router";
        description = "Waitra is a very simple router.\nIt's useful for writing simple API web-services,\nwhen you don't want to use the whole Yesod stack.\n\n> echoRoute :: Route\n> echoRoute = routeGet (echoApp <\$ string \"/api/echo/\" <*> many anySym)\n>  where echoApp msg _req respond = respond \$ responseLBS status200 [] (fromString msg)\n>\n> app :: Application\n> app = waitraMiddleware [echoRoute] \$ staticApp \$ embeddedSettings \$(mkRecursiveEmbedded \"static\")";
        buildType = "Simple";
      };
      components = {
        "waitra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-types
            hsPkgs.regex-applicative
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.wai
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.http-types
              hsPkgs.regex-applicative
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.waitra
            ];
          };
        };
      };
    }