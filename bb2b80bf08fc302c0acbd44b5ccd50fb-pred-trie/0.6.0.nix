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
        name = "pred-trie";
        version = "0.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "Predicative tries";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/pred-trie#readme>";
      buildType = "Simple";
    };
    components = {
      "pred-trie" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.mtl)
          (hsPkgs.poly-arity)
          (hsPkgs.pred-set)
          (hsPkgs.semigroups)
          (hsPkgs.strict)
          (hsPkgs.tries)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "pred-trie-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.mtl)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-set)
            (hsPkgs.pred-trie)
            (hsPkgs.semigroups)
            (hsPkgs.strict)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.tries)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      benchmarks = {
        "pred-trie-bench" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.mtl)
            (hsPkgs.poly-arity)
            (hsPkgs.pred-set)
            (hsPkgs.pred-trie)
            (hsPkgs.semigroups)
            (hsPkgs.sets)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.tries)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }