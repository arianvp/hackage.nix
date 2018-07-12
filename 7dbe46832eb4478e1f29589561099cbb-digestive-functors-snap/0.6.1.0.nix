{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "digestive-functors-snap";
          version = "0.6.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt <m@jaspervdj.be>";
        homepage = "http://github.com/jaspervdj/digestive-functors";
        url = "";
        synopsis = "Snap backend for the digestive-functors library";
        description = "Snap backend for the digestive-functors library";
        buildType = "Simple";
      };
      components = {
        "digestive-functors-snap" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.digestive-functors
            hsPkgs.snap-core
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
        };
      };
    }