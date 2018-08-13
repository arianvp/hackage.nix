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
        name = "bittrex";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2017";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/bittrex";
      url = "";
      synopsis = "API bindings to bittrex.com";
      description = "Haskell bindings to the Bittrex exchange";
      buildType = "Simple";
    };
    components = {
      "bittrex" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client-tls)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.scientific)
          (hsPkgs.SHA)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.wreq)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bittrex)
            (hsPkgs.text)
          ];
        };
      };
    };
  }