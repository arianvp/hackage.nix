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
        name = "tempodb";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 Parnell Springmeyer";
      maintainer = "parnell@ixmat.us";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/hs-tempodb";
      url = "";
      synopsis = "A small Haskell wrapper around the TempoDB api.";
      description = "TempoDB is a time-series database as-a-service with a\nrobust REST API. This module provides a simple API wrapper\nto perform all of the primary requests to TempoDB.";
      buildType = "Simple";
    };
    components = {
      "tempodb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-streams)
          (hsPkgs.mtl)
          (hsPkgs.HTTP)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.io-streams)
          (hsPkgs.blaze-builder)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.text)
        ];
      };
    };
  }