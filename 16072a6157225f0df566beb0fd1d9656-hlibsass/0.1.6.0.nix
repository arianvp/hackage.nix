{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      externallibsass = false;
      sharedlibsass = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hlibsass";
        version = "0.1.6.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "fiolek94@gmail.com";
      author = "Jakub Fijałkowski <fiolek94@gmail.com>";
      homepage = "https://github.com/jakubfijalkowski/hlibsass";
      url = "";
      synopsis = "Low-level bindings to Libsass";
      description = "This package provides (very) low level bindings to LibSass. By default, it\nuses LibSass compiled as a static library, so if you use this in your project,\nyou have to link your project with C++ runtime (which hLibsass does\nautomatically - links with /libstdc++/).\nFor documentation visit <https://github.com/sass/libsass>.";
      buildType = "Custom";
    };
    components = {
      "hlibsass" = {
        depends  = [ (hsPkgs.base) ];
        libs = [
          (pkgs.sass)
        ] ++ pkgs.lib.optionals (!_flags.externallibsass && !_flags.sharedlibsass) (if system.isOsx
          then [ (pkgs.c++) ]
          else [ (pkgs.stdc++) ]);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hlibsass)
          ];
        };
      };
    };
  }