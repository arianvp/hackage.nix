{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fay-geoposition";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eocallaghan@alterapraxis.com";
        author = "Edward O'Callaghan";
        homepage = "https://github.com/victoredwardocallaghan/fay-geoposition";
        url = "";
        synopsis = "W3C compliant implementation of GeoPosition API.";
        description = "W3C compliant implementation of GeoPosition API within the Fay Monad";
        buildType = "Simple";
      };
      components = {
        "fay-geoposition" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.fay
            hsPkgs.fay-text
          ];
        };
      };
    }