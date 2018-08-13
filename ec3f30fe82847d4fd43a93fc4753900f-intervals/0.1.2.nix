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
        name = "intervals";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://patch-tag.com/r/ekmett/intervals";
      url = "";
      synopsis = "Interval Arithmetic";
      description = "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.\n\nThis package is careful to manage the rounding direction of each floating point\noperation to ensure that the resulting interval is conservative. Effectively the lower bound of each computation is always rounded down, and the upper bound is rounded up.";
      buildType = "Simple";
    };
    components = {
      "intervals" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.numeric-extras)
          (hsPkgs.rounding)
        ];
      };
    };
  }