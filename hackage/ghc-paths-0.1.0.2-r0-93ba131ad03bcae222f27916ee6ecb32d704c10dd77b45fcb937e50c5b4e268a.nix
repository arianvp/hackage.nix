{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ghc-paths";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Simon Marlow";
      homepage = "";
      url = "";
      synopsis = "Knowledge of GHC's installation directories";
      description = "Knowledge of GHC's installation directories";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }