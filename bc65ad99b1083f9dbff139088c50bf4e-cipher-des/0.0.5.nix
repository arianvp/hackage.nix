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
        name = "cipher-des";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "DES and 3DES primitives";
      description = "DES and 3DES primitives";
      buildType = "Simple";
    };
    components = {
      "cipher-des" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.securemem)
          (hsPkgs.crypto-cipher-types)
        ];
      };
      tests = {
        "test-cipher-des" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.byteable)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-tests)
            (hsPkgs.cipher-des)
          ];
        };
      };
      benchmarks = {
        "bench-cipher-des" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-cipher-benchmarks)
            (hsPkgs.cipher-des)
          ];
        };
      };
    };
  }