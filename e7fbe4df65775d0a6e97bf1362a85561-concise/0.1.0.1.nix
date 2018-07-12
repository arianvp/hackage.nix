{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "concise";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2016  Fraser Tweedale";
        maintainer = "frase@frase.id.au";
        author = "Fraser Tweedale";
        homepage = "https://github.com/frasertweedale/hs-concise";
        url = "";
        synopsis = "Utilities for Control.Lens.Cons";
        description = "concise provides a handful of functions to extend what you can\ndo with Control.Lens.Cons.";
        buildType = "Simple";
      };
      components = {
        "concise" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.concise
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }