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
      specVersion = "1.6";
      identifier = {
        name = "webserver";
        version = "0.4.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "HTTP server library";
      description = "A simple but practical library of HTTP server";
      buildType = "Simple";
    };
    components = {
      "webserver" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.old-locale)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.process)
          (hsPkgs.c10k)
        ];
      };
    };
  }