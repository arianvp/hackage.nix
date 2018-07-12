{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "align";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "palotai.robin@gmail.com";
        author = "Robin Palotai";
        homepage = "";
        url = "";
        synopsis = "Sequence alignment algorithms.";
        description = "Global or local sequence alignment, not exclusively for text.";
        buildType = "Simple";
      };
      components = {
        "align" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.uglymemo
          ];
        };
      };
    }