{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-filepath";
          version = "2.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maxwellswadling@gmail.com";
        author = "Maxwell Swadling";
        homepage = "https://github.com/maxpow4h/data-filepath";
        url = "";
        synopsis = "A type safe file path data structure";
        description = "";
        buildType = "Simple";
      };
      components = {
        "data-filepath" = {
          depends  = [
            hsPkgs.base
            hsPkgs.split
            hsPkgs.template-haskell
            hsPkgs.ghc-prim
          ];
        };
      };
    }