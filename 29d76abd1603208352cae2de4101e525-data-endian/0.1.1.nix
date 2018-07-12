{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "data-endian";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2011-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/data-endian";
        url = "";
        synopsis = "Endian-sensitive data";
        description = "This package provides helpers for converting endian-sensitive data.";
        buildType = "Simple";
      };
      components = {
        "data-endian" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }