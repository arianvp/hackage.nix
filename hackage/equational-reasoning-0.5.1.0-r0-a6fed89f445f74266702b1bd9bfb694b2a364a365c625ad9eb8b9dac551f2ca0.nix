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
      specVersion = "1.8";
      identifier = {
        name = "equational-reasoning";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Hiromi ISHII 2013-2018";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "";
      url = "";
      synopsis = "Proof assistant for Haskell using DataKinds & PolyKinds";
      description = "A simple convenient library to write equational / preorder proof as in Agda.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.th-extras)
          (hsPkgs.void)
          (hsPkgs.singletons)
        ] ++ (if compiler.isGhc && compiler.version.ge "8.4"
          then [ (hsPkgs.th-desugar) ]
          else [
            (hsPkgs.semigroups)
            (hsPkgs.th-desugar)
          ]);
      };
    };
  }