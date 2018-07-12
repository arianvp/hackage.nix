{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reflex-gloss";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Jeffrey Rosenbluth";
        maintainer = "jeffrey.rosenbluth@gmail.com";
        author = "Jeffrey Rosenbluth";
        homepage = "https://github.com/reflex-frp/reflex-gloss";
        url = "";
        synopsis = "An reflex interface for gloss.";
        description = "This package exports a simple wrapper, in terms of\nGraphics.Gloss.Interface.IO.Game, that allows full\ncontrol of the picture generated by Gloss as a\nBehavior, as well as providing access to\nGloss' clock and input-handling functionality as\nEvents.";
        buildType = "Simple";
      };
      components = {
        "reflex-gloss" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gloss
            hsPkgs.reflex
            hsPkgs.dependent-sum
            hsPkgs.transformers
          ];
        };
      };
    }