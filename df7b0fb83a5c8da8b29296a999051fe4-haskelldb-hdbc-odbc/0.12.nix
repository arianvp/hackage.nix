{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskelldb-hdbc-odbc";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "";
        url = "";
        synopsis = "HaskellDB support for the HDBC ODBC driver.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "haskelldb-hdbc-odbc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskelldb
            hsPkgs.haskelldb-hdbc
            hsPkgs.HDBC
            hsPkgs.HDBC-odbc
          ];
        };
        exes = {
          "DBDirect-hdbc-odbc" = {};
        };
      };
    }