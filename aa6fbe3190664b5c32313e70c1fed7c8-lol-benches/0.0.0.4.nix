{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lol-benches";
          version = "0.0.0.4";
        };
        license = "GPL-2.0-only";
        copyright = "Eric Crockett, Chris Peikert";
        maintainer = "Eric Crockett <ecrockett0@gmail.com>";
        author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
        homepage = "https://github.com/cpeikert/Lol";
        url = "";
        synopsis = "A library for benchmarking <https://hackage.haskell.org/package/lol lol>.";
        description = "This library contains code to benchmark <https://hackage.haskell.org/package/lol lol>.\nIt is designed so that third-party tensors can be easily benchmarked using the same framework.\nFor examples of how to use this library, see the benchmarks for\n<https://hackage.haskell.org/package/lol-cpp lol-cpp>.";
        buildType = "Simple";
      };
      components = {
        "lol-benches" = {
          depends  = [
            hsPkgs.ansi-terminal
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.criterion
            hsPkgs.crypto-api
            hsPkgs.deepseq
            hsPkgs.DRBG
            hsPkgs.lol
            hsPkgs.MonadRandom
            hsPkgs.split
            hsPkgs.statistics
            hsPkgs.vector
          ];
        };
      };
    }