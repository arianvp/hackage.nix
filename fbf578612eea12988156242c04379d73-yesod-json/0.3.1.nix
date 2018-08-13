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
        name = "yesod-json";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Generate content for Yesod using the aeson package.";
      description = "Generate content for Yesod using the aeson package.";
      buildType = "Simple";
    };
    components = {
      "yesod-json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-routes)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.shakespeare-js)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.conduit)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.safe)
        ];
      };
    };
  }