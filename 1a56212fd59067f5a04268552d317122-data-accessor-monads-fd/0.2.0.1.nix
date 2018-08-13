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
        name = "data-accessor-monads-fd";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Record_access";
      url = "http://code.haskell.org/data-accessor/";
      synopsis = "Use Accessor to access state in monads-fd State monad class";
      description = "Use Accessor to access state in monads-fd State monad class";
      buildType = "Simple";
    };
    components = {
      "data-accessor-monads-fd" = {
        depends  = [
          (hsPkgs.data-accessor)
          (hsPkgs.monads-fd)
          (hsPkgs.transformers)
          (hsPkgs.base)
        ];
      };
    };
  }