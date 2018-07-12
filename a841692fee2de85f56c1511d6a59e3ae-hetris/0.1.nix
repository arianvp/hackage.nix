{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hetris";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ian Lynagh <igloo@earth.li>";
        author = "Ian Lynagh";
        homepage = "http://web.comlab.ox.ac.uk/oucl/work/ian.lynagh/Hetris/";
        url = "";
        synopsis = "Text Tetris";
        description = "This is a simple reimplementation of Tetris which\nuses the Curses interface to run in a terminal.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hetris" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.array
              hsPkgs.old-time
            ];
            libs = [ pkgs.curses ];
          };
        };
      };
    }