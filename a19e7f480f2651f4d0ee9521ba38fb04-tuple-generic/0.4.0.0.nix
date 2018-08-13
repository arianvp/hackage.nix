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
        name = "tuple-generic";
        version = "0.4.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/tuple-generic";
      url = "";
      synopsis = "Generic operations on tuples";
      description = "Generic operations on tuples";
      buildType = "Simple";
    };
    components = {
      "tuple-generic" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }