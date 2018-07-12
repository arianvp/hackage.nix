{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gloss-algorithms";
          version = "1.9.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "benl@ouroborus.net";
        author = "Ben Lippmeier";
        homepage = "http://gloss.ouroborus.net";
        url = "";
        synopsis = "Data structures and algorithms for working with 2D graphics.";
        description = "Data structures and algorithms for working with 2D graphics.";
        buildType = "Simple";
      };
      components = {
        "gloss-algorithms" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.containers
            hsPkgs.gloss
          ];
        };
      };
    }