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
        name = "polynomials-bernstein";
        version = "1.1.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jean-Philippe Bernardy <jeanphilippe.bernardy@gmail.com>";
      author = "Pierre-Etienne Meunier <pierreetienne.meunier@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A solver for systems of polynomial equations in bernstein form";
      description = "This library defines an optimized type for representing polynomials\nin Bernstein form, as well as instances of numeric classes and other\nmanipulation functions, and a solver of systems of polynomial\nequations in this form.";
      buildType = "Simple";
    };
    components = {
      "polynomials-bernstein" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
    };
  }