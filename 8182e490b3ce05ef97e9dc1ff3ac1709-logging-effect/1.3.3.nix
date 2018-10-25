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
        name = "logging-effect";
        version = "1.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "https://github.com/ocharles/logging-effect";
      url = "";
      synopsis = "A mtl-style monad transformer for general purpose & compositional logging";
      description = "";
      buildType = "Simple";
    };
    components = {
      "logging-effect" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.stm)
          (hsPkgs.stm-delay)
          (hsPkgs.prettyprinter)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.semigroups)
          (hsPkgs.unliftio-core)
        ];
      };
      benchmarks = {
        "benchmark-logging-effect" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.logging-effect)
            (hsPkgs.criterion)
            (hsPkgs.monad-logger)
            (hsPkgs.fast-logger)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.prettyprinter)
            (hsPkgs.lifted-async)
            (hsPkgs.time)
          ];
        };
      };
    };
  }