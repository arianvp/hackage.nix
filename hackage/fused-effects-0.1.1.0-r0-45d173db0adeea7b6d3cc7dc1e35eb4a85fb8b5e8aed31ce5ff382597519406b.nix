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
      specVersion = "1.10";
      identifier = {
        name = "fused-effects";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Rob Rix, Patrick Thomson";
      maintainer = "robrix@github.com";
      author = "Rob Rix, Patrick Thomson";
      homepage = "https://github.com/robrix/fused-effects";
      url = "";
      synopsis = "A fast, flexible, fused effect system.";
      description = "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.MonadRandom)
          (hsPkgs.random)
        ];
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fused-effects)
            (hsPkgs.hspec)
          ];
        };
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fused-effects)
            (hsPkgs.hspec)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }