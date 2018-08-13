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
        name = "ratel-wai";
        version = "1.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/ratel-wai#readme";
      url = "";
      synopsis = "Notify Honeybadger about exceptions via a WAI middleware.";
      description = "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.";
      buildType = "Simple";
    };
    components = {
      "ratel-wai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.ratel)
          (hsPkgs.wai)
        ];
      };
    };
  }