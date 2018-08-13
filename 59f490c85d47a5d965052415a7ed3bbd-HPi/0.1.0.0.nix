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
        name = "HPi";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wjw.hillen@gmail.com";
      author = "Wander Hillen";
      homepage = "https://github.com/WJWH/HPi";
      url = "";
      synopsis = "GPIO and I2C functions for the Raspberry Pi.";
      description = "This package is a FFI wrapper around the bcm2835 library by Mike McCauley, it also includes a few utility functions for easier use of the imported functions.";
      buildType = "Simple";
    };
    components = {
      "HPi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }