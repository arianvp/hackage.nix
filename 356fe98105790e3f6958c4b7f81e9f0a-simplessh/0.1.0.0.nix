{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "simplessh";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tho.feron@gmail.com";
        author = "Thomas Feron";
        homepage = "";
        url = "";
        synopsis = "Simple wrapper around libssh2";
        description = "It supports authentication by password or keys. Everything is in the SimpleSSH monad which is ErrorT SimpleSSHError IO, allowing to manage errors in a \"haskeller\" way.";
        buildType = "Simple";
      };
      components = {
        "simplessh" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
          libs = [ pkgs.ssh2 ];
        };
      };
    }