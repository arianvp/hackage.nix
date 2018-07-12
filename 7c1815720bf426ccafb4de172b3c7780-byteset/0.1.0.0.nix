{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "byteset";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "Set of bytes.";
        description = "Data structure for sets of bytes, where bytes are @Word8@ values.";
        buildType = "Simple";
      };
      components = {
        "byteset" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
      };
    }