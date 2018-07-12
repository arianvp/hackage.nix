{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      disable-docs = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "discord-types";
          version = "0.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jkoike2013@gmail.com";
        author = "Joshua Koike";
        homepage = "https://github.com/jano017/Discord.hs";
        url = "";
        synopsis = "Type information for discord-hs";
        description = "Type information for discord-hs";
        buildType = "Simple";
      };
      components = {
        "discord-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.time
            hsPkgs.hashable
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.transformers
          ];
        };
      };
    }