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
      specVersion = "1.10";
      identifier = {
        name = "hakyll-sass";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "vc@braden-walters.info";
      author = "Braden Walters";
      homepage = "https://github.com/meoblast001/hakyll-sass";
      url = "";
      synopsis = "Hakyll SASS compiler over hsass";
      description = "Hakyll compiler which indirectly uses libsass to compile SASS and SCSS to CSS.\nThe Ruby SASS compiler is not required.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.data-default-class)
          (hsPkgs.hsass)
        ];
      };
    };
  }