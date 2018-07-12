{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "profunctor-extras";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/profunctor-extras/";
        url = "";
        synopsis = "Profunctor extras";
        description = "Profunctor extras";
        buildType = "Simple";
      };
      components = {
        "profunctor-extras" = {
          depends  = [
            hsPkgs.base
            hsPkgs.semigroupoids
            hsPkgs.semigroupoid-extras
            hsPkgs.comonad
            hsPkgs.profunctors
          ];
        };
      };
    }