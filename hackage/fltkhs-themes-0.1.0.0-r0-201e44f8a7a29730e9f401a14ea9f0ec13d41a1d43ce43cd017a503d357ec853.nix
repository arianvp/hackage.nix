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
      specVersion = "1.24";
      identifier = {
        name = "fltkhs-themes";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Aditya Siram";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/fltkhs-themes#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/deech/fltkhs-themes#readme>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fltkhs)
          (hsPkgs.load-font)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."fontconfig");
      };
    };
  }