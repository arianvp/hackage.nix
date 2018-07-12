{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "music-parts";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "To be written.";
        description = "Abstract representation of musical parts and instruments.\nThis library is part of the Haskell Music Suite, see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        "music-parts" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
      };
    }