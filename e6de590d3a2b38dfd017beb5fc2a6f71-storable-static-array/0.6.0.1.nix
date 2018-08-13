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
        name = "storable-static-array";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "";
      url = "";
      synopsis = "Statically-sized array wrappers with Storable instances\nfor FFI marshaling";
      description = "Uses type-level numeric literals to wrap arrays in a type\nthat statically fixes their size. The wrapper has\na @Storable@ instance, for easy integration with\nfixed-size native arrays.";
      buildType = "Simple";
    };
    components = {
      "storable-static-array" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.tagged)
          (hsPkgs.vector)
        ];
      };
    };
  }