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
        name = "fixed-storable-array";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "";
      url = "";
      synopsis = "Fixed-size wrapper for StorableArray, providing a\nStorable instance";
      description = "Uses type-level numeric literals to wrap @StorableArray@\nin a type that statically fixes its size. The wrapper has\na @Storable@ instance, for easy integration with\nfixed-size native arrays.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.tagged)
        ];
      };
    };
  }