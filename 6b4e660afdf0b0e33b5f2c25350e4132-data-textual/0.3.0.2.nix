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
      specVersion = "1.10.0";
      identifier = {
        name = "data-textual";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-textual";
      url = "";
      synopsis = "Human-friendly textual representations.";
      description = "This package provides an interface for converting between data and its\n(human-friendly) textual representation.";
      buildType = "Simple";
    };
    components = {
      "data-textual" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.text-latin1)
          (hsPkgs.text-printer)
          (hsPkgs.parsers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.text-printer)
            (hsPkgs.type-hint)
            (hsPkgs.parsers)
            (hsPkgs.data-textual)
          ];
        };
      };
    };
  }