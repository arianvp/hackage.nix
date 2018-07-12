{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gitlib-libgit2";
          version = "3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Libgit2 backend for gitlib";
        description = "Libgit2 (<http://libgit2.github.com>) backend for @gitlib@.";
        buildType = "Simple";
      };
      components = {
        "gitlib-libgit2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.gitlib
            hsPkgs.hlibgit2
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.failure
            hsPkgs.fast-logger
            hsPkgs.filepath
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.missing-foreign
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.stm
            hsPkgs.stm-conduit
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.text-icu
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
        tests = {
          "smoke" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gitlib
              hsPkgs.gitlib-test
              hsPkgs.gitlib-libgit2
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
            ];
          };
        };
      };
    }