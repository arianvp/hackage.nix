{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "container";
          version = "1.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2015 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/containers";
        url = "";
        synopsis = "Containers abstraction and utilities.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "container" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.data-layer
            hsPkgs.functor-utils
            hsPkgs.lens
            hsPkgs.lens-utils
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.typelevel
            hsPkgs.vector
            hsPkgs.text
          ];
        };
      };
    }