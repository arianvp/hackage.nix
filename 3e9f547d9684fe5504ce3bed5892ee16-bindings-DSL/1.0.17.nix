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
      specVersion = "1.8";
      identifier = {
        name = "bindings-DSL";
        version = "1.0.17";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-dsl";
      url = "";
      synopsis = "FFI domain specific language, on top of hsc2hs.";
      description = "This is a set of macros to be used when writing Haskell FFI.\nThey were designed to be able to fully describe C interfaces,\nso that hsc2hs can extract from them all Haskell code needed to\nmimic such interfaces. All Haskell names used are automatically\nderived from C names, structures are mapped to Haskell instances\nof Storable, and there are also macros you can use with C code\nto help write bindings to inline functions or macro functions.\nDocumentation is available at package homepage:\n\n<http://bitbucket.org/mauricio/bindings-dsl>\n\nThe extra module Bindings.Utilities will contain tools that may\nbe convenient when working with FFI.";
      buildType = "Simple";
    };
    components = {
      "bindings-DSL" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }