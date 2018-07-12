{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      chart = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "criterion";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bryan O'Sullivan";
        maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "";
        url = "";
        synopsis = "Benchmarking, Performance, Testing";
        description = "This library provides a powerful but simple way to measure the\nperformance of Haskell code.  It provides both a framework for\nexecuting and analysing benchmarks and a set of driver functions\nthat makes it easy to build and run benchmarks, and to analyse their\nresults.\n\nThe fastest way to get started is to read the documentation and\nexamples in the Criterion.Main module.";
        buildType = "Simple";
      };
      components = {
        "criterion" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.statistics
            hsPkgs.time
            hsPkgs.uvector
            hsPkgs.uvector-algorithms
          ] ++ pkgs.lib.optionals _flags.chart [
            hsPkgs.Chart
            hsPkgs.data-accessor
          ];
        };
      };
    }