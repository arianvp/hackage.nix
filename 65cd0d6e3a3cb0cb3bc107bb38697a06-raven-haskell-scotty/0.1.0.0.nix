{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "raven-haskell-scotty";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "http://bitbucket.org/dpwiz/raven-haskell-scotty";
        url = "";
        synopsis = "Http interface for Scotty web server.";
        description = "Utilities to log errors in Scotty actions using raven-haskell.";
        buildType = "Simple";
      };
      components = {
        "raven-haskell-scotty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.raven-haskell
            hsPkgs.scotty
            hsPkgs.wai
            hsPkgs.case-insensitive
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
      };
    }