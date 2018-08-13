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
        name = "data-reify-cse";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fvisser.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Common Sub-Expression Elimination for graphs generated by Data.Reify.";
      description = "Common Sub-Expression Elimination for graphs generated by Data.Reify.";
      buildType = "Simple";
    };
    components = {
      "data-reify-cse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-reify)
        ];
      };
    };
  }