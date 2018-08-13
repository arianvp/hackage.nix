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
        name = "yesod-tls";
        version = "1.4.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Tamás László Fábián <giganetom@gmail.com>";
      author = "Tamás László Fábián <giganetom@gmail.com>";
      homepage = "http://github.com/netom/yesod-tls";
      url = "";
      synopsis = "Provides main functions using warp-tls for yesod projects";
      description = "This package makes possible to build Yesod web applications that provide SSL support.";
      buildType = "Simple";
    };
    components = {
      "yesod-tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.template-haskell)
          (hsPkgs.monad-logger)
          (hsPkgs.fast-logger)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }