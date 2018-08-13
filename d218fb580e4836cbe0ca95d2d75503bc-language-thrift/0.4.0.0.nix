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
        name = "language-thrift";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Abhinav Gupta <mail@abhinavg.net>";
      author = "Abhinav Gupta";
      homepage = "https://github.com/abhinav/language-thrift";
      url = "";
      synopsis = "Parser and pretty printer for the Thrift IDL format.";
      description = "This package provides a parser and pretty printer for the\n<http://thrift.apache.org/docs/idl Thrift IDL format>.";
      buildType = "Simple";
    };
    components = {
      "language-thrift" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.parsers)
          (hsPkgs.trifecta)
          (hsPkgs.wl-pprint)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.trifecta)
            (hsPkgs.wl-pprint)
            (hsPkgs.language-thrift)
          ];
        };
      };
    };
  }