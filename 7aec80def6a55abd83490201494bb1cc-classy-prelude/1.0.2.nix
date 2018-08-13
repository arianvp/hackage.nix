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
      specVersion = "1.8";
      identifier = {
        name = "classy-prelude";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable";
      url = "";
      synopsis = "A typeclass-based Prelude.";
      description = "Modern best practices without name collisions. No partial functions are exposed, but modern data structures are, without requiring import lists. Qualified modules also are not needed: instead operations are based on type-classes from the mono-traversable package.";
      buildType = "Simple";
    };
    components = {
      "classy-prelude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.lifted-base)
          (hsPkgs.lifted-async)
          (hsPkgs.async)
          (hsPkgs.mono-traversable)
          (hsPkgs.mono-traversable-instances)
          (hsPkgs.exceptions)
          (hsPkgs.semigroups)
          (hsPkgs.vector-instances)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.chunked-data)
          (hsPkgs.ghc-prim)
          (hsPkgs.stm)
          (hsPkgs.primitive)
          (hsPkgs.mtl)
          (hsPkgs.bifunctors)
          (hsPkgs.mutable-containers)
          (hsPkgs.dlist)
          (hsPkgs.transformers-base)
          (hsPkgs.safe-exceptions)
          (hsPkgs.deepseq)
          (hsPkgs.monad-unlift)
          (hsPkgs.say)
          (hsPkgs.stm-chans)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.classy-prelude)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }