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
      specVersion = "1.6";
      identifier = {
        name = "attoparsec-text-enumerator";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Felipe Lessa 2010, John Millikin 2010";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, John Millikin <jmillikin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Convert an attoparsec-text parser into an iteratee";
      description = "Convert an attoparsec-text parser into an iteratee.\n\nThis library is basically a translation of the original\nattoparsec-enumerator library to use text instead of\nbytestrings.";
      buildType = "Simple";
    };
    components = {
      "attoparsec-text-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec-text)
          (hsPkgs.text)
          (hsPkgs.enumerator)
        ];
      };
    };
  }