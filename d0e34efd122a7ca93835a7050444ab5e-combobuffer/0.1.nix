{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "combobuffer";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "https://github.com/JohnLato/combobuffer";
        url = "";
        synopsis = "Various buffer implementations";
        description = "Various buffer implementations";
        buildType = "Simple";
      };
      components = {
        "combobuffer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.vector
            hsPkgs.vector-space
          ];
        };
      };
    }