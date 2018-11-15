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
        name = "load-font";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Aditya Siram";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/load-font#load-font";
      url = "";
      synopsis = "A cross platform library for loading bundled fonts into your application";
      description = "Please see the README on Github at <https://github.com/deech/load-font#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "load-font-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fltkhs)
            (hsPkgs.load-font)
            (hsPkgs.text)
          ];
        };
      };
    };
  }