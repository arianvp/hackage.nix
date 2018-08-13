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
        name = "hRESP";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "huangyi";
      homepage = "https://github.com/yihuang/hresp";
      url = "";
      synopsis = "haskell implementation of RESP (REdis Serialization Protocol).";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hRESP" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
        ];
      };
    };
  }