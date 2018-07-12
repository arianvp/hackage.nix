{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pure-zlib";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "awick@galois.com";
        author = "Adam Wick";
        homepage = "http://github.com/GaloisInc/pure-zlib";
        url = "";
        synopsis = "A Haskell-only implementation of zlib / DEFLATE";
        description = "A Haskell-only implementation of the zlib / DEFLATE\nprotocol. Currently only implements the decompression\nalgorithm.";
        buildType = "Simple";
      };
      components = {
        "pure-zlib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.fingertree
            hsPkgs.monadLib
          ];
        };
        tests = {
          "test-zlib" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.pure-zlib
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }