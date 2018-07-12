{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "satchmo-examples";
          version = "1.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann";
        author = "Johannes Waldmann";
        homepage = "http://dfa.imn.htwk-leipzig.de/satchmo/";
        url = "";
        synopsis = "examples that show how to use satchmo";
        description = "examples that show how to use satchmo";
        buildType = "Simple";
      };
      components = {
        exes = {
          "Factor" = {
            depends  = [
              hsPkgs.satchmo
              hsPkgs.satchmo-minisat
              hsPkgs.process
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
          "HC" = {
            depends  = [
              hsPkgs.satchmo
              hsPkgs.satchmo-minisat
              hsPkgs.process
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
          "VC" = {
            depends  = [
              hsPkgs.satchmo
              hsPkgs.satchmo-funsat
              hsPkgs.process
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
            ];
          };
        };
      };
    }