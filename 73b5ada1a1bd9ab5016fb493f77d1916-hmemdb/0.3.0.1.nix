{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hmemdb";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "miguelimo38@yandex.ru";
        author = "Miguel Mitrofanov";
        homepage = "";
        url = "";
        synopsis = "In-memory relational database";
        description = "Library that provides a sort of relational database in memory (which could be saved to the disk, however). Very untested.";
        buildType = "Simple";
      };
      components = {
        "hmemdb" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.monad-stm
          ];
        };
      };
    }