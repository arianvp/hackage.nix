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
      specVersion = "1.6";
      identifier = {
        name = "simple-config";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yunomu@gmail.com";
      author = "YusukeNomura";
      homepage = "https://github.com/yunomu/simple-config";
      url = "";
      synopsis = "Simple config file parser generator";
      description = "Simple config file parser generator";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.parsec3)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }