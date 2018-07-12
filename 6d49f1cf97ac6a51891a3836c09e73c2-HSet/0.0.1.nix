{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HSet";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Faux heterogeneous sets";
        description = "";
        buildType = "Simple";
      };
      components = {
        "HSet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.hashtables
            hsPkgs.hashable
          ];
        };
      };
    }