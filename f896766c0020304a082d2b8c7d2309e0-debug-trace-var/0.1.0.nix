{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "debug-trace-var";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "© ncaq";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "https://github.com/ncaq/debug-trace-var#readme";
        url = "";
        synopsis = "You do not have to write variable names twice in Debug.Trace";
        description = "Please see the README on GitHub at <https://github.com/ncaq/debug-trace-var#readme>";
        buildType = "Simple";
      };
      components = {
        "debug-trace-var" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.unicode-show
          ];
        };
      };
    }