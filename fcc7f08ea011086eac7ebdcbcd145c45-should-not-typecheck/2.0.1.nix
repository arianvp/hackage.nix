{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "should-not-typecheck";
          version = "2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "message.me.on@github.com";
        author = "Callum Rogers";
        homepage = "http://github.com/CRogers/should-not-typecheck";
        url = "";
        synopsis = "A HUnit/hspec assertion library to verify that an expression does not typecheck";
        description = "For examples and an introduction to the library please take a look at the <https://github.com/CRogers/should-not-typecheck#should-not-typecheck- README> on github.";
        buildType = "Simple";
      };
      components = {
        "should-not-typecheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.deepseq
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.should-not-typecheck
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.deepseq
            ];
          };
        };
      };
    }