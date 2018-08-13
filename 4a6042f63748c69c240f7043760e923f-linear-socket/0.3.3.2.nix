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
        name = "linear-socket";
        version = "0.3.3.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Allele Dev";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "";
      url = "";
      synopsis = "Typed sockets";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "linear-socket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "linear-socket-hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
      tests = {
        "linear-socket-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.linear-socket)
            (hsPkgs.tasty-hspec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }