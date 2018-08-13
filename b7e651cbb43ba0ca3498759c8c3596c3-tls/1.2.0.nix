{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      compat = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "tls";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls";
      url = "";
      synopsis = "TLS/SSL protocol native implementation (Server and Client)";
      description = "Native Haskell TLS and SSL protocol implementation for server and client.\n\nThis provides a high-level implementation of a sensitive security protocol,\neliminating a common set of security issues through the use of the advanced\ntype system, high level constructions and common Haskell features.\n\nCurrently implement the SSL3.0, TLS1.0, TLS1.1 and TLS1.2 protocol,\nwith only RSA supported for Key Exchange.\n\nOnly core protocol available here, have a look at the\n<http://hackage.haskell.org/package/tls-extra/> package for default\nciphers, compressions and certificates functions.";
      buildType = "Simple";
    };
    components = {
      "tls" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.data-default-class)
          (hsPkgs.cryptohash)
          (hsPkgs.crypto-random)
          (hsPkgs.crypto-numbers)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.cipher-rc4)
          (hsPkgs.cipher-aes)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
        ];
      };
      tests = {
        "test-tls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.cereal)
            (hsPkgs.data-default-class)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.cprng-aes)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.bytestring)
            (hsPkgs.x509)
            (hsPkgs.x509-validation)
            (hsPkgs.tls)
            (hsPkgs.time)
            (hsPkgs.crypto-random)
            (hsPkgs.crypto-pubkey)
          ];
        };
      };
      benchmarks = {
        "bench-tls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tls)
            (hsPkgs.x509)
            (hsPkgs.x509-validation)
            (hsPkgs.data-default-class)
            (hsPkgs.crypto-random)
            (hsPkgs.criterion)
            (hsPkgs.cprng-aes)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.time)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }