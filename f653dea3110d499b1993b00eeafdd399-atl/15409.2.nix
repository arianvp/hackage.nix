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
      specVersion = "1.2.3";
      identifier = {
        name = "atl";
        version = "15409.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Arrow Transformer Library";
      description = "Arrow Transformer Library";
      buildType = "Simple";
    };
    components = {
      "atl" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }