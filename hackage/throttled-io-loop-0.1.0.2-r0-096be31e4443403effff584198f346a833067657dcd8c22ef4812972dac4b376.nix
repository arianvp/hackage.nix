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
        name = "throttled-io-loop";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Axial Exchange";
      maintainer = "rfischer+stack@axialexchange.com";
      author = "Robert Fischer";
      homepage = "https://github.com/AxialExchange/haskell-throttled-io-loop#readme";
      url = "";
      synopsis = "Loop over an action but throttle it to a certain rate";
      description = "This provides a function that loops over an IO action endlessly, but limited to a certain number of executions per time period.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.natural-numbers)
        ];
      };
      tests = {
        "loop-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.throttled-io-loop)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }