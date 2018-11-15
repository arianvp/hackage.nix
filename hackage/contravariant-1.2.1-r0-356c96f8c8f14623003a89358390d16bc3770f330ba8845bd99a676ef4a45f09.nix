{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      tagged = true;
      semigroups = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "contravariant";
        version = "1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2007-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/contravariant/";
      url = "";
      synopsis = "Contravariant functors";
      description = "Contravariant functors";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.void)
        ] ++ pkgs.lib.optional (flags.tagged && !(compiler.isGhc && compiler.version.ge "7.7")) (hsPkgs.tagged)) ++ pkgs.lib.optional (flags.semigroups) (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) (hsPkgs.ghc-prim);
      };
    };
  }