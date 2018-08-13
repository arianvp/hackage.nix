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
        name = "copilot-libraries";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "niswegmann@gmail.com";
      author = "Lee Pike, Robin Morisset, Alwyn Goodloe, Sebastian Niller,\nNis Nordby Wegmann";
      homepage = "";
      url = "";
      synopsis = "A Haskell-embedded DSL for monitoring hard real-time\ndistributed systems.";
      description = "Libraries for the Copilot language.\n\nCopilot is a stream (i.e., infinite lists) domain-specific language (DSL) in\nHaskell that compiles into embedded C.  Copilot contains an interpreter,\nmultiple back-end compilers, and other verification tools.  A tutorial, bug\nreports, and todos are available at\n<https://github.com/niswegmann/copilot-discussion>.\n\nExamples are available at\n<https://github.com/leepike/Copilot/tree/master/Examples>.";
      buildType = "Simple";
    };
    components = {
      "copilot-libraries" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.copilot-language)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
        ];
      };
    };
  }