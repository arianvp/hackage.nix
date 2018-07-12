{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "numhask-array";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/numhask-array";
        url = "";
        synopsis = "See readme.md";
        description = "See readme.md for description.";
        buildType = "Simple";
      };
      components = {
        "numhask-array" = {
          depends  = [
            hsPkgs.base
            hsPkgs.numhask
            hsPkgs.adjunctions
            hsPkgs.distributive
            hsPkgs.ghc-typelits-natnormalise
            hsPkgs.protolude
            hsPkgs.singletons
            hsPkgs.typelits-witnesses
            hsPkgs.vector
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.numhask
            ];
          };
        };
      };
    }