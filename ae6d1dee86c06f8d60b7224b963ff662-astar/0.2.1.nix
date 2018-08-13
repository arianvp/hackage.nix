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
      specVersion = "0";
      identifier = {
        name = "astar";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cgibbard@gmail.com";
      author = "Cale Gibbard";
      homepage = "";
      url = "";
      synopsis = "General A* search algorithm.";
      description = "This is a data-structure independent implementation of A* search.";
      buildType = "Simple";
    };
    components = {
      "astar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.PSQueue)
        ];
      };
    };
  }