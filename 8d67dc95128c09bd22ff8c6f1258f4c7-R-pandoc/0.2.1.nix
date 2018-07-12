{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "R-pandoc";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "corentin.dupont@gmail.com";
        author = "Corentin Dupont";
        homepage = "";
        url = "";
        synopsis = "A pandoc filter to express R plots inside markdown";
        description = "";
        buildType = "Simple";
      };
      components = {
        "R-pandoc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pandoc-types
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.split
          ];
        };
        exes = {
          "R-pandoc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pandoc-types
              hsPkgs.R-pandoc
            ];
          };
        };
      };
    }