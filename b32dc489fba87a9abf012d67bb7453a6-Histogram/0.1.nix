{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Histogram";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Easily create histograms of your data";
        buildType = "Simple";
      };
      components = {
        "Histogram" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gnuplot
            hsPkgs.containers
          ];
        };
      };
    }