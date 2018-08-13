{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      docheckwarns = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "test-pkg";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Just tests Hackage";
      description = "Hackage does not have documentation,\nso we have to test things.";
      buildType = "Simple";
    };
    components = {
      "test-pkg" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }