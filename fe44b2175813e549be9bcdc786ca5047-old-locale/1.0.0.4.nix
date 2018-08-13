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
      specVersion = "1.6";
      identifier = {
        name = "old-locale";
        version = "1.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "locale library";
      description = "This package provides the old locale library.\nFor new code, the new locale library is recommended.";
      buildType = "Simple";
    };
    components = {
      "old-locale" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }