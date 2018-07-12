{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "vector-shuffling";
          version = "1.1";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/metrix-ai/vector-shuffling";
        url = "";
        synopsis = "Algorithms for vector shuffling";
        description = "";
        buildType = "Simple";
      };
      components = {
        "vector-shuffling" = {
          depends  = [
            hsPkgs.random
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }