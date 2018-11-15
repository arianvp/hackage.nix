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
        name = "google-oauth2-jwt";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2018 - Michel Boucey";
      maintainer = "michel.boucey@cybervisible.fr";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/google-oauth2-jwt";
      url = "";
      synopsis = "Get a signed JWT for Google Service Accounts";
      description = "This library implements the creation of the\nsigned JWT for Google Service Accounts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.RSA)
          (hsPkgs.text)
          (hsPkgs.unix-time)
        ];
      };
    };
  }