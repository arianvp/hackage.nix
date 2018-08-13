{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      plot-gtk-ui = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "calculator";
        version = "0.3.0.2";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "sumit.sahrawat.apm13@itbhu.ac.in";
      author = "Sumit Sahrawat";
      homepage = "https://github.com/sumitsahrawat/calculator";
      url = "";
      synopsis = "A calculator repl, with variables, functions & Mathematica like dynamic plots.";
      description = "A calculator repl that processes mathematical expressions.\nDoes basic arithmetic, and provides pre-defined basic mathematical functions.\n\nProvides binding functionality for variables and functions.\n\nOptionally provides plotting support (configure using cabal).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "calculator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.parsec)
          ] ++ pkgs.lib.optionals (_flags.plot-gtk-ui) [
            (hsPkgs.plot-gtk-ui)
            (hsPkgs.gtk)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "model-test-arithmetic" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }