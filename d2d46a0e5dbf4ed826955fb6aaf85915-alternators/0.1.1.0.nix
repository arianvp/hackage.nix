{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alternators";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/alternators#readme";
        url = "";
        synopsis = "Handy functions when using transformers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "alternators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmorph
            hsPkgs.transformers
          ];
        };
      };
    }