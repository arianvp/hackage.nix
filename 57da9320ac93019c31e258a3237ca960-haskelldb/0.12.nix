{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskelldb";
          version = "0.12";
        };
        license = "BSD-3-Clause";
        copyright = "The authors";
        maintainer = "haskelldb-users@lists.sourceforge.net";
        author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
        homepage = "http://haskelldb.sourceforge.net";
        url = "";
        synopsis = "SQL unwrapper for Haskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "haskelldb" = {
          depends  = [
            hsPkgs.mtl
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.old-time
              hsPkgs.old-locale
              hsPkgs.directory
            ]
            else [ hsPkgs.base ]);
        };
      };
    }