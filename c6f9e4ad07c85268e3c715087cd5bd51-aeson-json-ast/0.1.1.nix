{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson-json-ast";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2016, Sannsyn AS";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/sannsyn/aeson-json-ast";
        url = "";
        synopsis = "Integration layer for \"json-ast\" and \"aeson\"";
        description = "";
        buildType = "Simple";
      };
      components = {
        "aeson-json-ast" = {
          depends  = [
            hsPkgs.json-ast
            hsPkgs.aeson
            hsPkgs.base
          ];
        };
      };
    }