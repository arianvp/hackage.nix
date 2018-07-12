{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "stepwise";
          version = "1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Arie Middelkoop";
        maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "";
        description = "Stepwise monad: stepwise computations, providing resolution of non-deterministic choice, breadth-first search strategies and online results.";
        buildType = "Simple";
      };
      components = {
        "stepwise" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
          ];
        };
        exes = {
          "stepwise-benchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.progression
              hsPkgs.criterion
            ];
          };
        };
      };
    }