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
        name = "wai-graceful";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://bitbucket.org/dpwiz/wai-graceful";
      url = "";
      synopsis = "Graceful shutdown for WAI applications.";
      description = "something here";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.wai)
          (hsPkgs.resourcet)
          (hsPkgs.http-types)
          (hsPkgs.unix)
        ];
      };
    };
  }