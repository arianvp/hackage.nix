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
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-cli-args";
        version = "0.17";
      };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-cli-args/";
      url = "";
      synopsis = "Hydrogen Command Line Arguments Parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-cli-args" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hydrogen-multimap)
          (hsPkgs.hydrogen-prelude)
        ];
      };
    };
  }