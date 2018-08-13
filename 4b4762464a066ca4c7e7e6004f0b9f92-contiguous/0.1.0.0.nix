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
      specVersion = "2.0";
      identifier = {
        name = "contiguous";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/contiguous";
      url = "";
      synopsis = "Unified interface for primitive arrays";
      description = "This package provides a typeclass `Contiguous` that offers a\nunified interface to working with `Array`, `PrimArray`, and\n`UnliftedArray`.";
      buildType = "Simple";
    };
    components = {
      "contiguous" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
        ];
      };
    };
  }