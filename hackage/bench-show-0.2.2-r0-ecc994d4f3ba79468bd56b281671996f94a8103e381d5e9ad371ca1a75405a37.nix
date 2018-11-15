{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "bench-show";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017, 2018 Composewell Technologies";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/bench-show";
      url = "";
      synopsis = "Show, plot and compare benchmark results";
      description = "Generate text reports and graphical charts from benchmark results\ngenerated by @gauge@ or @criterion@, showing or comparing benchmarks in\nmany useful ways. In a few lines of code, we can report time taken, peak\nmemory usage, allocations, among many other fields; we can arrange benchmarks\nin groups and compare the groups; we can compare benchmark results before and\nafter a change; we can show the difference from baseline in absolute terms or\nas a percentage; we can sort the results by percentage change to get the\nworst affected benchmarks.\n\n@bench-show@ helps us in answering questions like the following, visually or\ntextually:\n\n* Across two benchmark runs, show all the operations that resulted in a\nregression of more than 10%, so that we can quickly identify and fix\nperformance problems in our application.\n* Across two (or more) packages (providing similar functionality), show all\nthe operations where the performance differs by more than 10%, so that we\ncan critically analyze the packages and choose the right one.\n\nQuick Start: Use @gauge@ or @criterion@ to generate a @results.csv@ file, and\nthen use the following code to generate a textual report or a graph:\n\n@\nreport \"results.csv\"  Nothing defaultConfig\ngraph  \"results.csv\" \"output\" defaultConfig\n@\n\nFor example, you can show can show % regression from a baseline in descending\norder texttually as follows:\n\n@\n(time)(Median)(Diff using min estimator)\nBenchmark streamly(0)(μs)(base) streamly(1)(%)(-base)\n\\--------- --------------------- ---------------------\nzip                      644.33                +23.28\nmap                      653.36                 +7.65\nfold                     639.96                -15.63\n@\n\nTo show the same graphically:\n\n<<src/docs/regression-percent-descending-median-time.svg>>\n\nSee the README and the \"BenchShow.Tutorial\" module for comprehensive\ndocumentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Chart)
          (hsPkgs.Chart-diagrams)
          (hsPkgs.csv)
          (hsPkgs.filepath)
          (hsPkgs.mwc-random)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.split)
          (hsPkgs.statistics)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.bench-show)
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.text)
          ];
        };
        "doc" = {
          depends  = [
            (hsPkgs.bench-show)
            (hsPkgs.base)
            (hsPkgs.split)
          ];
        };
      };
    };
  }