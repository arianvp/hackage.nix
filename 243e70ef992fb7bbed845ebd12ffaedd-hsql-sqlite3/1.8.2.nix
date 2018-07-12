{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hsql-sqlite3";
          version = "1.8.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nick.rudnick@googlemail.com";
        author = "Krasimir Angelov <kr.angelov@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "SQLite3 driver for HSQL.";
        description = "A Haskell Interface to SQLite 3 via libsqlite3\nin the standard library path.";
        buildType = "Simple";
      };
      components = {
        "hsql-sqlite3" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsql
          ];
          libs = [ pkgs.sqlite3 ];
        };
      };
    }