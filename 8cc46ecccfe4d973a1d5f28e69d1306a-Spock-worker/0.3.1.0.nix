{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Spock-worker";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014 - 2016 Alexander Thiemann";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "http://github.com/agrafix/Spock-worker";
        url = "";
        synopsis = "Background workers for Spock";
        description = "Adds a background-job queue to Spock";
        buildType = "Simple";
      };
      components = {
        "Spock-worker" = {
          depends  = [
            hsPkgs.Spock
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.errors
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        tests = {
          "SpockWorkerTests" = {
            depends  = [
              hsPkgs.HTF
              hsPkgs.Spock-worker
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.vector
            ];
          };
        };
      };
    }