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
      specVersion = "1.8";
      identifier = {
        name = "free-game";
        version = "0.3.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2013 Fumiaki Kinoshita";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/free-game";
      url = "";
      synopsis = "Create graphical applications for free.";
      description = "Cross-platform GUI library based on free monads";
      buildType = "Simple";
    };
    components = {
      "free-game" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.random)
          (hsPkgs.repa)
          (hsPkgs.JuicyPixels-repa)
          (hsPkgs.vect)
          (hsPkgs.array)
          (hsPkgs.filepath)
          (hsPkgs.freetype2)
          (hsPkgs.hashable)
          (hsPkgs.OpenGL)
          (hsPkgs.OpenGLRaw)
          (hsPkgs.GLFW-b)
          (hsPkgs.StateVar)
          (hsPkgs.void)
        ];
      };
    };
  }