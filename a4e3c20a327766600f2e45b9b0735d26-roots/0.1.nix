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
        name = "roots";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "/dev/null";
      url = "";
      synopsis = "Root-finding algorithms (1-dimensional)";
      description = "Framework for and a few implementations of\n(1-dimensional) numerical root-finding algorithms.";
      buildType = "Simple";
    };
    components = {
      "roots" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tagged)
        ];
      };
    };
  }