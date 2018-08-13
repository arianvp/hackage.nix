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
      specVersion = "1.18";
      identifier = {
        name = "quiver-http";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Christian Marie <christian@ponies.io>";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/quiver-http/";
      url = "";
      synopsis = "Adapter to stream over HTTP(s) with quiver";
      description = "A simple wrapper around http-client to facilitate HTTP streaming. Very\nsimilar to pipes-http.";
      buildType = "Simple";
    };
    components = {
      "quiver-http" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.quiver)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
        ];
      };
    };
  }