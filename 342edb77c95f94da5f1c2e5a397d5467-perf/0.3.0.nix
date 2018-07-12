{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "perf";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Tony Day";
        maintainer = "tonyday567@gmail.com";
        author = "Tony Day";
        homepage = "https://github.com/tonyday567/perf";
        url = "";
        synopsis = "low-level performance statistics";
        description = "\nA set of tools to measure time performance.\n";
        buildType = "Simple";
      };
      components = {
        "perf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.foldl
            hsPkgs.numhask
            hsPkgs.protolude
            hsPkgs.rdtsc
            hsPkgs.tdigest
            hsPkgs.time
          ];
        };
        exes = {
          "perf-examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.formatting
              hsPkgs.numhask
              hsPkgs.optparse-generic
              hsPkgs.perf
              hsPkgs.protolude
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.protolude
              hsPkgs.perf
            ];
          };
        };
      };
    }