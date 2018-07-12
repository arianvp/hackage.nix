{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hgis";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/hgis#readme";
        url = "";
        synopsis = "Package and command-line for GIS with Haskell";
        description = "Package containting functions to make graphs, read\nshapefiles, and compute areas/perimeters of\ngeographic features.";
        buildType = "Simple";
      };
      components = {
        "hgis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.optparse-applicative
            hsPkgs.Chart
            hsPkgs.Chart-cairo
            hsPkgs.Chart-diagrams
            hsPkgs.lens
            hsPkgs.composition
            hsPkgs.ansi-wl-pprint
            hsPkgs.transformers
            hsPkgs.directory
            hsPkgs.colour
            hsPkgs.data-default
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.filepath
            hsPkgs.monad-loops
          ];
          pkgconfig = [
            pkgconfPkgs.cairo
          ];
        };
        exes = {
          "hgis" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hgis
            ];
          };
        };
        tests = {
          "hgis-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hgis
              hsPkgs.hspec
            ];
          };
        };
      };
    }