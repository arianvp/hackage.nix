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
      specVersion = "1.10";
      identifier = {
        name = "CoreDump";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "omeragacan@gmail.com";
      author = "Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "A GHC plugin for printing GHC's internal Core data structures.";
      description = "See README file.";
      buildType = "Simple";
    };
    components = {
      "CoreDump" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }