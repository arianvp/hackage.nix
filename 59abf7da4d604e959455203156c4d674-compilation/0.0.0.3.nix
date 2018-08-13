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
      specVersion = "1.6";
      identifier = {
        name = "compilation";
        version = "0.0.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Haskell functionality for quickly assembling simple compilers.";
      description = "Haskell monad and combinators for quickly assembling simple compilation algorithms.";
      buildType = "Simple";
    };
    components = {
      "compilation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MissingH)
        ];
      };
    };
  }