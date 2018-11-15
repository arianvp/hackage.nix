{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { ghc7 = true; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "yesod-auth-oauth";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hiromi Ishii";
      author = "Hiromi Ishii";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "OAuth Authentication for Yesod.";
      description = "Authentication for Yesod.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.authenticate-oauth)
          (hsPkgs.bytestring)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.text)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
        ] ++ [ (hsPkgs.base) ];
      };
    };
  }