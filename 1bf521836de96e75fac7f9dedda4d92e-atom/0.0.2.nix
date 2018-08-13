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
      specVersion = "1.2.3";
      identifier = {
        name = "atom";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomahawkins@gmail.com";
      author = "Tom Hawkins";
      homepage = "";
      url = "";
      synopsis = "A DSL for embedded hard realtime applications.";
      description = "Atom is a Haskell DSL for designing hard realtime embedded programs.\nBased on conditional term rewriting, atom will compile\na collection of atomic state transition rules\nto a C program with constant memory use and deterministic execution time.";
      buildType = "Simple";
    };
    components = {
      "atom" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
        ];
      };
    };
  }