{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "posix-realtime";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "POSIX Realtime functionality";
        description = "This package gives you access to the set of operating system\nservices standardised by POSIX 1003.1b (or the IEEE Portable\nOperating System Interface for Computing Environments -\nIEEE Std. 1003.1).\n\nThe package is not supported under Windows (except under Cygwin).";
        buildType = "Configure";
      };
      components = {
        "posix-realtime" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }