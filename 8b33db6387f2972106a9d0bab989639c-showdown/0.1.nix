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
        name = "showdown";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "DiscipleRayne@gmail.com";
      author = "Anthony Simpson";
      homepage = "";
      url = "";
      synopsis = "A simple gtk based Russian Roulette game.";
      description = "A Russian Roulette game written in Haskell\nUsing GTK2HS and Glade.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "showdown" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.glade)
            (hsPkgs.random)
          ];
        };
      };
    };
  }