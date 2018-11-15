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
      specVersion = "1.6";
      identifier = {
        name = "yesod";
        version = "1.4.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-form)
          (hsPkgs.monad-control)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.aeson)
          (hsPkgs.safe)
          (hsPkgs.data-default)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.monad-logger)
          (hsPkgs.fast-logger)
          (hsPkgs.conduit-extra)
          (hsPkgs.shakespeare)
          (hsPkgs.streaming-commons)
          (hsPkgs.wai-logger)
          (hsPkgs.semigroups)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }