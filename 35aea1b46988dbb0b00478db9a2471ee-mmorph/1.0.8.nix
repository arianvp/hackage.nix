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
      specVersion = "1.8.0.2";
      identifier = {
        name = "mmorph";
        version = "1.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Monad morphisms";
      description = "This library provides monad morphism utilities, most commonly used\nfor manipulating monad transformer stacks.";
      buildType = "Simple";
    };
    components = {
      "mmorph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
        ];
      };
    };
  }