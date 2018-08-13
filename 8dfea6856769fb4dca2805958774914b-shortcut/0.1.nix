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
      specVersion = "1.8";
      identifier = {
        name = "shortcut";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "";
      description = "A class for interruptible computations";
      buildType = "Simple";
    };
    components = {
      "shortcut" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }