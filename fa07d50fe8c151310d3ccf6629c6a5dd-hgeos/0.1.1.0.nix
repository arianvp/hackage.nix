{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hgeos";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "(C) 2016 Richard Cook";
      maintainer = "Richard Cook <rcook@rcook.org>";
      author = "Richard Cook <rcook@rcook.org>";
      homepage = "https://github.com/rcook/hgeos#readme";
      url = "";
      synopsis = "Simple Haskell bindings to GEOS C API";
      description = "Simple Haskell bindings to the GEOS C API heavily inspired by\n<https://github.com/django/django/tree/master/django/contrib/gis/geos Django GEOS bindings>";
      buildType = "Simple";
    };
    components = {
      "hgeos" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.geos_c) ];
      };
      tests = {
        "hgeos-app" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hgeos)
          ];
        };
      };
    };
  }