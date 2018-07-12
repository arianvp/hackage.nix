{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uhc-util";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
        maintainer = "atze@uu.nl";
        author = "Atze Dijkstra";
        homepage = "https://github.com/UU-ComputerScience/uhc-utils";
        url = "";
        synopsis = "UHC utilities";
        description = "General purpose utilities for UHC and related tools";
        buildType = "Simple";
      };
      components = {
        "uhc-util" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.fgl
            hsPkgs.directory
            hsPkgs.hashable
            hsPkgs.old-time
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.process
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.uulib
          ];
        };
      };
    }