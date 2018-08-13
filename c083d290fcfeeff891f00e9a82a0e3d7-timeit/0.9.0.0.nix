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
        name = "timeit";
        version = "0.9.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Time a computation";
      description = "A simple wrapper of an IO computation to show the used CPU time.";
      buildType = "Simple";
    };
    components = {
      "timeit" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }