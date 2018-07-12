{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stickyKeysHotKey";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "shahn@joyridelabs.de";
        author = "Soenke Hahn";
        homepage = "";
        url = "";
        synopsis = "get and set STICKYKEYS.SKF_HOTKEYACTIVE";
        description = "";
        buildType = "Simple";
      };
      components = {
        "stickyKeysHotKey" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }