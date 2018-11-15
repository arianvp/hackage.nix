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
      specVersion = "0";
      identifier = {
        name = "data-accessor-template";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>, Luke Palmer <lrpalmer@gmail.com>";
      homepage = "http://code.haskell.org/data-accessor/";
      url = "";
      synopsis = "Utilities for accessing and manipulating fields of records";
      description = "Automate generation of @Accessor@'s of the @data-accessor@ package\nby Template Haskell functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-accessor)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }