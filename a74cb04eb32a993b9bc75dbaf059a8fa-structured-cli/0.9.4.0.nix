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
        name = "structured-cli";
        version = "0.9.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "https://gitlab.com/codemonkeylabs/structured-cli#readme";
      url = "";
      synopsis = "Application library for building interactive console CLIs";
      description = "This module provides the tools to build a complete \"structured\" CLI application, similar to those found in systems like Cisco IOS or console configuration utilities etc. It aims to be easy for implementors to use.";
      buildType = "Simple";
    };
    components = {
      "structured-cli" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.haskeline)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "some-cli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.mtl)
            (hsPkgs.split)
            (hsPkgs.structured-cli)
          ];
        };
      };
    };
  }