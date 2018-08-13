{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      unix = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "scroll";
        version = "1.20150323";
      };
      license = "GPL-2.0-only";
      copyright = "2015 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "https://joeyh.name/code/scroll/";
      url = "";
      synopsis = "scroll(6), a roguelike game";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "scroll" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.ncurses)
            (hsPkgs.data-default)
            (hsPkgs.random)
            (hsPkgs.monad-loops)
            (hsPkgs.IfElse)
            (hsPkgs.case-insensitive)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ] ++ pkgs.lib.optional (_flags.unix) (hsPkgs.unix);
        };
      };
    };
  }