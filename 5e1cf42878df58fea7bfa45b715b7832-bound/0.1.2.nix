{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bound";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/bound/";
        url = "";
        synopsis = "Combinators for manipulating locally-nameless generalized de Bruijn terms";
        description = "Combinators for manipulating locally-nameless generalized de Bruijn terms";
        buildType = "Simple";
      };
      components = {
        "bound" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.prelude-extras
            hsPkgs.transformers
          ];
        };
      };
    }