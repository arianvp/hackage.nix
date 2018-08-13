{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      llvm = false;
      opt = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lol-repa";
        version = "0.0.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A repa backend for <https://hackage.haskell.org/package/lol Λ ∘ λ>.";
      description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nThis package provides a pure Haskell implementation of Lol's Tensor interface\nusing the repa library for parallel arrays.";
      buildType = "Simple";
    };
    components = {
      "lol-repa" = {
        depends  = [
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.lol)
          (hsPkgs.monadcryptorandom)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.repa)
          (hsPkgs.singletons)
          (hsPkgs.th-desugar)
          (hsPkgs.tagged-transformer)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "test-lol-repa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lol-repa)
            (hsPkgs.lol-tests)
          ];
        };
      };
      benchmarks = {
        "bench-lol-repa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.DRBG)
            (hsPkgs.lol)
            (hsPkgs.lol-benches)
            (hsPkgs.lol-repa)
          ];
        };
      };
    };
  }