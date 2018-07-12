{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "holy-project";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Yann.Esposito@gmail.com";
        author = "Yann Esposito (yogsototh)";
        homepage = "http://github.com/yogsototh/holy-project";
        url = "";
        synopsis = "Start your Haskell project with cabal, git and tests.";
        description = "Holy Project is an application wich ask the user\nsome questions and create files to help you\nstarting a new Haskell project.\nThere are example for tests using HUnit and SmallCheck\nIt initializes git, use Haskell LTS, and provide\na useful script: \\\"auto-update\\\".";
        buildType = "Simple";
      };
      components = {
        "holy-project" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-terminal
            hsPkgs.split
            hsPkgs.hastache
            hsPkgs.bytestring
            hsPkgs.syb
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.unix
            hsPkgs.process
            hsPkgs.random
            hsPkgs.http-conduit
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.aeson
            hsPkgs.text
          ];
        };
        exes = {
          "holy-project" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-terminal
              hsPkgs.split
              hsPkgs.hastache
              hsPkgs.bytestring
              hsPkgs.syb
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.filepath
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.random
              hsPkgs.http-conduit
              hsPkgs.lens
              hsPkgs.lens-aeson
              hsPkgs.aeson
              hsPkgs.text
            ];
          };
          "test-holy-project" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.holy-project
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
        tests = {
          "Tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.holy-project
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }