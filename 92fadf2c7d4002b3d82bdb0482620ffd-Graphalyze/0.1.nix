{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Graphalyze";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) Ivan Lazar Miljenovic";
        maintainer = "Ivan.Miljenovic@gmail.com";
        author = "Ivan Lazar Miljenovic";
        homepage = "";
        url = "";
        synopsis = "Graph-Theoretic Analysis library.";
        description = "A library to use graph theory to analyse the relationships\ninherent in discrete data.";
        buildType = "Simple";
      };
      components = {
        "Graphalyze" = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.fgl
              hsPkgs.graphviz
              hsPkgs.bktrees
            ]
            else [
              hsPkgs.base
              hsPkgs.fgl
              hsPkgs.graphviz
              hsPkgs.bktrees
            ];
        };
      };
    }