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
        name = "merkle-tree";
        version = "0.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Adjoint Inc. (info@adjoint.io)";
      author = "";
      homepage = "https://github.com/adjoint-io/merkle-tree#readme";
      url = "";
      synopsis = "An implementation of a Merkle Tree and merkle tree proofs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "merkle-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.protolude)
          (hsPkgs.random)
        ];
      };
      tests = {
        "merkle-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.memory)
            (hsPkgs.merkle-tree)
            (hsPkgs.protolude)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }