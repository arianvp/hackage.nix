{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "system-uuid";
        version = "1.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "system-uuid@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/system-uuid/";
      url = "";
      synopsis = "Bindings to system UUID functions.";
      description = "Bindings to the native UUID generator for a number of platforms. Please\ncontact the author if your platform is not supported.";
      buildType = "Simple";
    };
    components = {
      "system-uuid" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
        ] ++ [ (hsPkgs.base) ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs.uuid) ++ pkgs.lib.optional (system.isWindows) (pkgs.rpcrt4);
      };
      exes = {
        "hooty" = {
          libs = pkgs.lib.optional (system.isLinux) (pkgs.uuid) ++ pkgs.lib.optional (system.isWindows) (pkgs.rpcrt4);
        };
      };
    };
  }