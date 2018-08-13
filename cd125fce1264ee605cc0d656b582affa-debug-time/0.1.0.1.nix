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
        name = "debug-time";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2015 Luka Horvat";
      maintainer = "example@example.com";
      author = "Luka Horvat";
      homepage = "http://github.com/LukaHorvat/debug-time#readme";
      url = "";
      synopsis = "Debug.Trace equivalent for timing computations";
      description = "Debug.Trace equivalent for timing computations";
      buildType = "Simple";
    };
    components = {
      "debug-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.clock)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.debug-time)
          ];
        };
      };
    };
  }