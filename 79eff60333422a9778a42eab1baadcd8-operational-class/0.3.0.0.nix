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
        name = "operational-class";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-operational-class";
      url = "";
      synopsis = "MonadProgram typeclass for the operational package";
      description = "";
      buildType = "Simple";
    };
    components = {
      "operational-class" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.operational)
        ];
      };
    };
  }