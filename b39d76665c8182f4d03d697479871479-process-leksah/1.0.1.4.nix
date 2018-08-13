{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      base4 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "process-leksah";
        version = "1.0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Process libraries";
      description = "This package contains libraries for dealing with system processes.  Temporary version for use in leksah until main process library is updated.";
      buildType = "Configure";
    };
    components = {
      "process-leksah" = {
        depends  = ([
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ] ++ pkgs.lib.optionals (!(compiler.isNhc98 && true)) (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ])) ++ [
          (hsPkgs.base)
        ];
        libs = pkgs.lib.optionals (!(compiler.isNhc98 && true)) (pkgs.lib.optional (system.isWindows) (pkgs.kernel32));
      };
    };
  }