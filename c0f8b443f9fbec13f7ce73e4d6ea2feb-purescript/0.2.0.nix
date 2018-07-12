{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "purescript";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "(c) Phil Freeman 2013";
        maintainer = "Phil Freeman <paf31@cantab.net>";
        author = "Phil Freeman <paf31@cantab.net>";
        homepage = "";
        url = "";
        synopsis = "PureScript Programming Language Compiler";
        description = "A small compile-to-JS language with extensible records and type-safe blocks";
        buildType = "Simple";
      };
      components = {
        "purescript" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmdtheline
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.syb
            hsPkgs.transformers
            hsPkgs.utf8-string
          ];
        };
        exes = {
          "psc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdtheline
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.purescript
              hsPkgs.syb
              hsPkgs.transformers
              hsPkgs.utf8-string
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdtheline
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.purescript
              hsPkgs.syb
              hsPkgs.transformers
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }