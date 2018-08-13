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
        name = "genvalidity-hspec-cereal";
        version = "0.2.0.2";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "Standard spec's for cereal-related instances";
      description = "Standard spec's for cereal-related Instances";
      buildType = "Simple";
    };
    components = {
      "genvalidity-hspec-cereal" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.deepseq)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-hspec)
          (hsPkgs.hspec)
        ];
      };
      tests = {
        "genvalidity-hspec-cereal-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.genvalidity-hspec-cereal)
            (hsPkgs.hspec)
          ];
        };
        "genvalidity-hspec-cereal-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec-cereal)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }