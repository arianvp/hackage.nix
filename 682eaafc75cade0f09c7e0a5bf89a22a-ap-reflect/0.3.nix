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
        name = "ap-reflect";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "odbaev@yandex.ru";
      author = "Oleg Baev";
      homepage = "https://github.com/cmc-msu-ai/ap-reflect";
      url = "";
      synopsis = "Partial evaluation reflection a la simple-reflect.";
      description = "The library provides a simple reflection technique,\nsubstituting functions like @fmap@ and @\\<*\\>@ with reflection-aware analogues.\nThis library can be used with <http://hackage.haskell.org/package/simple-reflect simple-reflect package>.";
      buildType = "Simple";
    };
    components = {
      "ap-reflect" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }