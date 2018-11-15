{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskore";
        version = "0.0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskore@henning-thielemann.de>";
      author = "Paul Hudak <paul.hudak@yale.edu>, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/Haskore";
      url = "http://darcs.haskell.org/haskore/";
      synopsis = "The Haskore Computer Music System";
      description = "Compose music using programming features.\nOutput in MIDI, CSound, SuperCollider or as a audio signal.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.event-list)
          (hsPkgs.midi)
          (hsPkgs.markov-chain)
          (hsPkgs.non-negative)
          (hsPkgs.data-accessor)
          (hsPkgs.mtl)
          (hsPkgs.haskell-src)
          (hsPkgs.parsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.process)
            (hsPkgs.containers)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.special-functors)
          ]);
      };
      exes = {
        "test" = {};
        "autotrack" = {};
      };
    };
  }