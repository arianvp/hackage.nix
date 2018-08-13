{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "tls-extra";
        version = "0.4.6";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-tls-extra";
      url = "";
      synopsis = "TLS extra default values and helpers";
      description = "a set of extra definitions, default values and helpers for tls.";
      buildType = "Simple";
    };
    components = {
      "tls-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.tls)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptocipher)
          (hsPkgs.certificate)
          (hsPkgs.pem)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "Tests" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cprng-aes)
          ];
        };
      };
    };
  }