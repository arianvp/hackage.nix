{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-fancy";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Taru Karttunen <taruti@taruti.net>";
        maintainer = "taruti@taruti.net";
        author = "Taru Karttunen";
        homepage = "http://github.com/taruti/network-fancy";
        url = "";
        synopsis = "Networking support with a cleaner API";
        description = "Networking support with a cleaner API";
        buildType = "Simple";
      };
      components = {
        "network-fancy" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = if system.isWindows
            then [ pkgs.ws2_32 ]
            else pkgs.lib.optional system.isSolaris pkgs.socket;
        };
      };
    }