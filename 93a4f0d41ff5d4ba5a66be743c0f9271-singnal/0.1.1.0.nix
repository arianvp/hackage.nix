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
        name = "singnal";
        version = "0.1.1.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "zaomir@outlook.com";
      author = "Zaoqi";
      homepage = "https://github.com/zaoqi/Signal.hs";
      url = "";
      synopsis = "Singnal";
      description = "Singnal";
      buildType = "Simple";
    };
    components = {
      "singnal" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }