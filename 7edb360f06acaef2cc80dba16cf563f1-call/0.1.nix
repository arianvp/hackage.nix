{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildhelloworld = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "call";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Fumiaki Kinoshita 2014";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/call";
        url = "";
        synopsis = "The call game engine";
        description = "Call is a minimalistic game engine that supports 2D/3D graphics and sounds.";
        buildType = "Simple";
      };
      components = {
        "call" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-portaudio
            hsPkgs.boundingboxes
            hsPkgs.clean-unions
            hsPkgs.colors
            hsPkgs.containers
            hsPkgs.control-bool
            hsPkgs.directory
            hsPkgs.distributive
            hsPkgs.elevator
            hsPkgs.filepath
            hsPkgs.freetype2
            hsPkgs.GLFW-b
            hsPkgs.hashable
            hsPkgs.JuicyPixels
            hsPkgs.JuicyPixels-util
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.mtl
            hsPkgs.objective
            hsPkgs.OpenGL
            hsPkgs.OpenGLRaw
            hsPkgs.random
            hsPkgs.reflection
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.WAVE
          ];
        };
        exes = {
          "hello-world" = {
            depends  = [
              hsPkgs.base
              hsPkgs.call
              hsPkgs.lens
            ];
          };
        };
      };
    }