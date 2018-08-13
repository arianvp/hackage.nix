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
        name = "pseudo-trie";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A tagged rose-tree with short circuited unique leaves";
      description = "";
      buildType = "Simple";
    };
    components = {
      "pseudo-trie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-instances)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.data-default)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }