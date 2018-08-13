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
        name = "string-class";
        version = "0.1.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010 Byron James Johnson";
      maintainer = "KrabbyKrap@gmail.com";
      author = "Byron James Johnson";
      homepage = "";
      url = "";
      synopsis = "String class library";
      description = "String class library";
      buildType = "Simple";
    };
    components = {
      "string-class" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.tagged)
        ];
      };
    };
  }