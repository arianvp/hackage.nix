{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bench-graph";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Composewell Technologies";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "https://github.com/composewell/bench-graph";
      url = "";
      synopsis = "Plot and compare benchmarks";
      description = "Plot benchmarks and compare them. An easy to use package to produce pretty\ngraphs from the @csv@ file generated by @criterion@ or @gauge@ in a few lines\nof code. It is high level yet pretty flexible in what you can do with it e.g.\nyou can compare groups of benchmarks side by side showing full measurements\nor a delta, or plot the performance regression of one version of your package\nagainst another version.\n\nSee the README for comprehensive documentation.";
      buildType = "Simple";
    };
    components = {
      "bench-graph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Chart)
          (hsPkgs.Chart-diagrams)
          (hsPkgs.csv)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bench-graph)
            (hsPkgs.split)
            (hsPkgs.text)
          ];
        };
      };
    };
  }