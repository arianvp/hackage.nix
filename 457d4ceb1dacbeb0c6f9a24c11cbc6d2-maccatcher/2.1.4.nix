{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "maccatcher";
          version = "2.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oss@solidsnack.be";
        author = "Jason Dusek";
        homepage = "";
        url = "";
        synopsis = "Obtain the host MAC address on *NIX and Windows.";
        description = "Obtain the host MAC address on *NIX and Windows.";
        buildType = "Simple";
      };
      components = {
        "maccatcher" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.process
            hsPkgs.parsec
          ];
        };
        exes = { "maccatcher" = {}; };
      };
    }