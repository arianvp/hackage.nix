{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "FunGEn";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2002 Andre Furtado <awbf@cin.ufpe.br>";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Andre Furtado <awbf@cin.ufpe.br>";
        homepage = "http://joyful.com/fungen";
        url = "";
        synopsis = "FUNctional Game ENgine";
        description = "A lightweight, cross-platform, OpenGL/GLUT-based game engine";
        buildType = "Simple";
      };
      components = {
        "FunGEn" = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.random
          ];
        };
        exes = {
          "fungen-hello" = {
            depends  = [
              hsPkgs.FunGEn
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.random
            ];
          };
          "fungen-pong" = {
            depends  = [
              hsPkgs.FunGEn
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.random
            ];
          };
          "fungen-worms" = {
            depends  = [
              hsPkgs.FunGEn
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.GLUT
              hsPkgs.random
            ];
          };
        };
      };
    }