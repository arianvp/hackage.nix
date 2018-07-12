{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "type-prelude";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Etienne Laurin <etienne@atnnn.com>";
        author = "Etienne Laurin";
        homepage = "http://code.atnnn.com/projects/type-prelude";
        url = "";
        synopsis = "Partial port of prelude to the type level. Requires GHC 7.6.1.";
        description = "This module contains functions from the prelude implemented at the type level as both type classes and type families. It comes with an Integer kind.";
        buildType = "Simple";
      };
      components = {
        "type-prelude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }