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
      specVersion = "1.8";
      identifier = {
        name = "wai-static-pages";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Greg Weber";
      homepage = "https://github.com/gregwebs/wai-static-pages";
      url = "";
      synopsis = "generate static html pages from a WAI application";
      description = "helpers for generating static html pages in a WAI application.";
      buildType = "Simple";
    };
    components = {
      "wai-static-pages" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.wai-test)
          (hsPkgs.http-types)
          (hsPkgs.conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.directory)
        ];
      };
    };
  }