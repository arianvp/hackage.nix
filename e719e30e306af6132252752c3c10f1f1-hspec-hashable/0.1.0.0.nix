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
        name = "hspec-hashable";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Plow Technologies";
      maintainer = "mchaver@gmail.com";
      author = "James M.C. Haver II";
      homepage = "https://github.com/plow-technologies/hspec-hashable#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hspec-hashable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.hspec)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-hashable)
            (hsPkgs.silently)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }