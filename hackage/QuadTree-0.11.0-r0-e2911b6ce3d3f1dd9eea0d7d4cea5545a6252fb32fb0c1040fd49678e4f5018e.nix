{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "QuadTree";
        version = "0.11.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ashley.moni1@gmail.com";
      author = "Ashley Moni";
      homepage = "";
      url = "";
      synopsis = "QuadTree library for Haskell, with lens support.";
      description = "The purpose of this package is to provide discrete region quadtrees that can be used as effective functional alternatives to 2D arrays, with lens support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.composition)
        ];
      };
      tests = {
        "quadtree-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.composition)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }