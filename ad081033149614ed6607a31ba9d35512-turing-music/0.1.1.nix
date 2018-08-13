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
      specVersion = "1.2";
      identifier = {
        name = "turing-music";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Péter Diviánszky";
      maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Plays music generated by Turing machines with 5 states and 2 symbols";
      description = "turing-music interprets 42 built-in Turing machines with 5 states and 2 symbols.\nIn every 0.1 second, a motion is done and the contents of the tape is printed.\nAt the same time, a sound is played. The pitch of the sound depends on the position of the last change\non the tape.\n\nThe built-in machines are busy beaver candidates.\nA busy beaver is a Turing machine which, when given an empty tape, does a lot of work, then halts.\nCurrently it is not known whether these simple machines halt or not.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "turing-music" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ALUT)
          ];
        };
      };
    };
  }