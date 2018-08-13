{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      ghc7 = true;
      production = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yesod";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://docs.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and web-routes-quasi.";
      buildType = "Simple";
    };
    components = {
      "yesod" = {
        depends  = ([
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-json)
          (hsPkgs.yesod-persistent)
          (hsPkgs.yesod-static)
          (hsPkgs.yesod-form)
          (hsPkgs.monad-peel)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.hamlet)
          (hsPkgs.warp)
          (hsPkgs.mime-mail)
          (hsPkgs.hjsmin)
          (hsPkgs.attoparsec-text)
        ] ++ pkgs.lib.optional (!_flags.production) (hsPkgs.wai-handler-devel)) ++ [
          (hsPkgs.base)
        ];
      };
      exes = {
        "yesod" = {
          depends  = [
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.directory)
          ] ++ [ (hsPkgs.base) ];
        };
      };
    };
  }