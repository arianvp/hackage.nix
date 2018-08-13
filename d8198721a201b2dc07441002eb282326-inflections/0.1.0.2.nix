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
        name = "inflections";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "2014 Justin Leitgeb";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/inflections-hs";
      url = "";
      synopsis = "Inflections library for Haskell";
      description = "Inflections provides methods for singularization, pluralization, dasherizing, etc. The library is based on Rails' inflections library.";
      buildType = "Simple";
    };
    components = {
      "inflections" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.inflections)
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }