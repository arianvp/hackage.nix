{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "twitter-types";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Takahiro HIMURA <taka@himura.jp>";
        author = "Takahiro HIMURA";
        homepage = "https://github.com/himura/twitter-types";
        url = "";
        synopsis = "Twitter JSON parser and types";
        description = "This package uses enumerator package for access Twitter API.";
        buildType = "Simple";
      };
      components = {
        "twitter-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-types
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-th-prime
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.http-types
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }