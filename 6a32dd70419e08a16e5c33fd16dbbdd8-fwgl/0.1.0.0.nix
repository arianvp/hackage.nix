{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fwgl";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ziocroc@hotmail.it";
        author = "Luca \"ZioCrocifisso\" Prezzavento";
        homepage = "https://github.com/ZioCrocifisso/FWGL";
        url = "";
        synopsis = "FRP 2D/3D game engine";
        description = "FRP 2D/3D game engine (work in progress)";
        buildType = "Simple";
      };
      components = {
        "fwgl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Yampa
            hsPkgs.hashable
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.transformers
            hsPkgs.ghcjs-base
          ];
        };
      };
    }