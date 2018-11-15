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
        name = "language-thrift";
        version = "0.9.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Abhinav Gupta <mail@abhinavg.net>";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/language-thrift#readme";
      url = "";
      synopsis = "Parser and pretty printer for the Thrift IDL format.";
      description = "This package provides a parser and pretty printer for the\n<http://thrift.apache.org/docs/idl Thrift IDL format>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.megaparsec)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.containers)
            (hsPkgs.megaparsec)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.language-thrift)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }