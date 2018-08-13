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
      specVersion = "1.6";
      identifier = {
        name = "barchart";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastian Fischer";
      author = "Sebastian Fischer";
      homepage = "http://sebfish.github.com/haskell-barchart";
      url = "";
      synopsis = "Creating Bar Charts in Haskell";
      description = "This package provides a program that generates bar charts from CSV\nfiles and has special support for visualising the benchmark results\nof the criterion and progression tools. It comes with an associated\nAPI that can be used to generate custom bar charts in case the\ncharts generated by the command-line program are insufficient for\nyour needs.";
      buildType = "Simple";
    };
    components = {
      "barchart" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.csv)
          (hsPkgs.diagrams)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "barchart" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.csv)
            (hsPkgs.diagrams)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }