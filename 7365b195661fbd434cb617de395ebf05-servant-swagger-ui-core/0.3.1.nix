{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      servant-0-5 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "servant-swagger-ui-core";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/haskell-servant/servant-swagger-ui";
        url = "";
        synopsis = "Servant swagger ui core components";
        description = "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)\n\nSee servant-swagger-ui, servant-swagger-ui-jensoleg or\nservant-swagger-ui-redoc for \"concrete\" implementations.";
        buildType = "Simple";
      };
      components = {
        "servant-swagger-ui-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.bytestring
            hsPkgs.http-media
            hsPkgs.servant
            hsPkgs.servant-blaze
            hsPkgs.servant-server
            hsPkgs.swagger2
            hsPkgs.text
            hsPkgs.wai-app-static
          ] ++ (if _flags.servant-0-5
            then [
              hsPkgs.servant
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ]
            else [
              hsPkgs.servant
              hsPkgs.either
            ]);
        };
      };
    }