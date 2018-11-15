{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "size-based";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Jonas Duregård";
      maintainer = "jonas.duregard@chalmers.se";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Sized functors, for size-based enumerations";
      description = "A framework for size-based enumerations. See the module documentations for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dictionary-sharing)
          (hsPkgs.testing-type-modifiers)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
    };
  }