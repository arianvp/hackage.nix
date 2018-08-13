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
        name = "control-monad-queue";
        version = "0.0.9.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Leon P Smith <leon@melding-monads.com>";
      homepage = "";
      url = "";
      synopsis = "Reusable corecursive queues, via continuations.";
      description = "Corecursive Queues";
      buildType = "Simple";
    };
    components = {
      "control-monad-queue" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }