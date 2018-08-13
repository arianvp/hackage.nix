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
        name = "hOpenPGP";
        version = "1.10";
      };
      license = "MIT";
      copyright = "2012-2014  Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hOpenPGP/";
      url = "";
      synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
      description = "native Haskell implementation of OpenPGP (RFC4880)";
      buildType = "Simple";
    };
    components = {
      "hOpenPGP" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.crypto-pubkey)
          (hsPkgs.crypto-random)
          (hsPkgs.cryptocipher)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.incremental-parser)
          (hsPkgs.ixset)
          (hsPkgs.lens)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.nettle)
          (hsPkgs.openpgp-asciiarmor)
          (hsPkgs.resourcet)
          (hsPkgs.securemem)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.hOpenPGP)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bzlib)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.crypto-cipher-types)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.crypto-random)
            (hsPkgs.cryptocipher)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default)
            (hsPkgs.errors)
            (hsPkgs.hashable)
            (hsPkgs.incremental-parser)
            (hsPkgs.ixset)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.nettle)
            (hsPkgs.securemem)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.zlib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }