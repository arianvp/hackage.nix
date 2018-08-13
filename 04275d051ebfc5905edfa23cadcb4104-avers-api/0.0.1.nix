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
        name = "avers-api";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "2016 Tomas Carnecky";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "http://github.com/wereHamster/avers-api";
      url = "";
      synopsis = "Types describing the core and extended Avers APIs";
      description = "See README";
      buildType = "Simple";
    };
    components = {
      "avers-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.avers)
          (hsPkgs.bytestring)
          (hsPkgs.cookie)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }