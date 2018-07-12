{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "blaze-html";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jaspervdj@gmail.com, simon.meier@inf.ethz.ch";
        author = "Jasper Van der Jeugt, Simon Meier";
        homepage = "http://jaspervdj.be/blaze";
        url = "";
        synopsis = "A blazingly fast HTML combinator library.";
        description = "A blazingly fast HTML combinator library for the Haskell\nprogramming language. The Text.Blaze module is a good\nstarting point, as well as this tutorial:\n<http://jaspervdj.be/blaze/tutorial.html>.";
        buildType = "Simple";
      };
      components = {
        "blaze-html" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.blaze-builder
          ];
        };
      };
    }