{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twitter-types-lens";
          version = "0.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "taka@himura.jp";
        author = "Takahiro HIMURA";
        homepage = "https://github.com/himura/twitter-types";
        url = "";
        synopsis = "Twitter JSON types (lens powered)";
        description = "";
        buildType = "Simple";
      };
      components = {
        "twitter-types-lens" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.twitter-types
          ];
        };
      };
    }