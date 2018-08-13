{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "google-oauth2-jwt";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 - Michel Boucey";
      maintainer = "michel.boucey@gmail.com";
      author = "Michel Boucey";
      homepage = "https://github.com/MichelBoucey/google-oauth2-jwt";
      url = "";
      synopsis = "Get a signed JWT for Google Service Accounts";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "google-oauth2-jwt" = {
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