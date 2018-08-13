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
        name = "geniplate";
        version = "0.6.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Lennart Augustsson";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Use Template Haskell to generate Uniplate-like functions.";
      description = "Use Template Haskell to generate Uniplate-like functions.";
      buildType = "Simple";
    };
    components = {
      "geniplate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
        ];
      };
    };
  }