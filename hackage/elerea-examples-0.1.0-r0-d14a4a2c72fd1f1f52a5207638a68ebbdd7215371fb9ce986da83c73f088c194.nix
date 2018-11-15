{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "elerea-examples";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Example applications for Elerea";
      description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* chase: a minimal example that demonstrates reactivity and mutually\nrecursive signals\n\n* breakout: a not too fancy breakout clone";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elerea-breakout" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elerea)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
        "elerea-chase" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elerea)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
      };
    };
  }