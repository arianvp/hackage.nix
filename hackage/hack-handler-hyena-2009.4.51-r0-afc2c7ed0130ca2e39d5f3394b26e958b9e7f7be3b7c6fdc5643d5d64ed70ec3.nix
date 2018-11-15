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
        name = "hack-handler-hyena";
        version = "2009.4.51";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "Hyena hack handler";
      description = "Hyena hack handler";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hack)
          (hsPkgs.hyena)
          (hsPkgs.containers)
        ];
      };
    };
  }