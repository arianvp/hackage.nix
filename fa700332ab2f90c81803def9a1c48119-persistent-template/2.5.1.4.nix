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
        name = "persistent-template";
        version = "2.5.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>, Greg Weber <greg@gregweber.info>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Type-safe, non-relational, multi-backend persistence.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent-template>.";
      buildType = "Simple";
    };
    components = {
      "persistent-template" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.persistent)
          (hsPkgs.monad-control)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.aeson-compat)
          (hsPkgs.monad-logger)
          (hsPkgs.unordered-containers)
          (hsPkgs.tagged)
          (hsPkgs.path-pieces)
          (hsPkgs.http-api-data)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.persistent-template)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.persistent)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }