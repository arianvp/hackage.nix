{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "modbus-tcp";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Roel van Dijk, Tim Schwarte";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>, Tim Schwarte <tim@timschwarte.nl>";
        homepage = "https://github.com/roelvandijk/modbus-tcp";
        url = "";
        synopsis = "Communicate with Modbus devices over TCP";
        description = "Implements the Modbus TPC/IP protocol.";
        buildType = "Simple";
      };
      components = {
        "modbus-tcp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.network
          ];
        };
      };
    }