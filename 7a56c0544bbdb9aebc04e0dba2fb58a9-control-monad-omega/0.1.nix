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
      specVersion = "0";
      identifier = {
        name = "control-monad-omega";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lrpalmer@gmail.com";
      author = "Luke Palmer";
      homepage = "";
      url = "";
      synopsis = "A breadth-first list monad.";
      description = "A monad for enumerating sets: like the list\nmonad but breadth-first.";
      buildType = "Simple";
    };
    components = {
      "control-monad-omega" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }