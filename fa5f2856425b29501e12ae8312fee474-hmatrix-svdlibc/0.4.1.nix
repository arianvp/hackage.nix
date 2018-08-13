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
        name = "hmatrix-svdlibc";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari";
      maintainer = "ben@smart-cactus.org";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/hmatrix-svdlibc";
      url = "";
      synopsis = "SVDLIBC bindings for HMatrix";
      description = "Bindings for the sparse singular value decomposition\nprovided by SVDLIBC.";
      buildType = "Simple";
    };
    components = {
      "hmatrix-svdlibc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "svdlibc-test" = {
          depends  = [
            (hsPkgs.hmatrix-svdlibc)
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "svdlibc-benchmarks" = {
          depends  = [
            (hsPkgs.hmatrix-svdlibc)
            (hsPkgs.base)
            (hsPkgs.hmatrix)
            (hsPkgs.vector)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }