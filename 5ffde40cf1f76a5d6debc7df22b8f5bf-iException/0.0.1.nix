{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3.0";
        identifier = {
          name = "iException";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2008 Marco Túlio Gontijo e Silva <marcot@riseup.net>";
        maintainer = "Marco Túlio Gontijo e Silva <marcot@riseup.net>";
        author = "Marco Túlio Gontijo e Silva";
        homepage = "";
        url = "";
        synopsis = "Version of Control.Exception using InterleavableIO.";
        description = "This module was generated by interleavableGen.";
        buildType = "Simple";
      };
      components = {
        "iException" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.interleavableIO
          ];
        };
      };
    }