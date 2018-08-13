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
        name = "gps";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "For manipulating GPS coordinates and trails.";
      description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations.";
      buildType = "Simple";
    };
    components = {
      "gps" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.prettyclass)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.statistics)
          (hsPkgs.text)
        ];
      };
      tests = {
        "gps-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            (hsPkgs.gps)
            (hsPkgs.gpx-conduit)
          ];
        };
      };
    };
  }