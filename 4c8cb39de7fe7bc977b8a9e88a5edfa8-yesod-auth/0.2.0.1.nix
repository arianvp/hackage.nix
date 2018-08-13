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
        name = "yesod-auth";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Authentication for Yesod.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yesod-auth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.authenticate)
          (hsPkgs.bytestring)
          (hsPkgs.yesod)
          (hsPkgs.wai)
          (hsPkgs.template-haskell)
          (hsPkgs.pureMD5)
          (hsPkgs.random)
          (hsPkgs.data-object)
          (hsPkgs.control-monad-attempt)
          (hsPkgs.text)
          (hsPkgs.mime-mail)
        ];
      };
    };
  }