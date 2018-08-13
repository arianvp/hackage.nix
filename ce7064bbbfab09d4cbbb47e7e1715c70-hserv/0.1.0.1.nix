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
        name = "hserv";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mail@rejuvyesh.com";
      author = "rejuvyesh";
      homepage = "github.com/rejuvyesh/hserv";
      url = "";
      synopsis = "Simple http server in haskell, similar to as provided by `python -m SimpleHTTPServer`.";
      description = "Simple http server in haskell, similar to as provided by `python -m SimpleHTTPServer`.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hserv" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai-app-static)
            (hsPkgs.warp)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }