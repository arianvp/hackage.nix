{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "free";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "git://github.com/ekmett/free/";
        url = "";
        synopsis = "Monads for free";
        description = "Monads for free";
        buildType = "Simple";
      };
      components = {
        "free" = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributive
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.semigroupoids
            hsPkgs.comonad
            hsPkgs.comonad-transformers
            hsPkgs.comonads-fd
            hsPkgs.semigroups
          ];
        };
      };
    }