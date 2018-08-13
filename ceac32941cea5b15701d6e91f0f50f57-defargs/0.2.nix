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
        name = "defargs";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Yusuke Matsushita 2014";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/defargs";
      url = "";
      synopsis = "default arguments in haskell";
      description = "Default arguments in Haskell. More information can be found in <http://hackage.haskell.org/package/defargs the hackage's haddock> or the <http://kinokkory.github.io/defargs/ updated haddock>.";
      buildType = "Simple";
    };
    components = {
      "defargs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cluss)
        ];
      };
    };
  }