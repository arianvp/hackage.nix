{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      prof = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "threads-supervisor";
          version = "1.0.4.1";
        };
        license = "MIT";
        copyright = "Alfredo Di Napoli";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "";
        url = "";
        synopsis = "Simple, IO-based library for Erlang-style thread supervision";
        description = "Simple, IO-based library for Erlang-style thread supervision";
        buildType = "Simple";
      };
      components = {
        "threads-supervisor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.retry
            hsPkgs.stm
            hsPkgs.time
          ];
        };
        exes = {
          "threads-supervisor-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.threads-supervisor
              hsPkgs.unordered-containers
              hsPkgs.stm
              hsPkgs.time
            ];
          };
        };
        tests = {
          "threads-supervisor-tests" = {
            depends  = [
              hsPkgs.threads-supervisor
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.retry
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.time
              hsPkgs.stm
              hsPkgs.transformers
            ];
          };
        };
      };
    }