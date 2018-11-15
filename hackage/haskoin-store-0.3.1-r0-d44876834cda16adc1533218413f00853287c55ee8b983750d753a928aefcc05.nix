{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskoin-store";
        version = "0.3.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin#readme";
      url = "";
      synopsis = "Storage and index for Bitcoin and Bitcoin Cash";
      description = "Store blocks, transactions, and balances for Bitcoin or Bitcoin Cash, and make that information via REST API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.hashable)
          (hsPkgs.haskoin-core)
          (hsPkgs.haskoin-node)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.nqe)
          (hsPkgs.random)
          (hsPkgs.rocksdb-haskell)
          (hsPkgs.rocksdb-query)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "haskoin-store" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.haskoin-store)
            (hsPkgs.http-types)
            (hsPkgs.monad-logger)
            (hsPkgs.nqe)
            (hsPkgs.optparse-applicative)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.scotty)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "haskoin-store-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.haskoin-core)
            (hsPkgs.haskoin-node)
            (hsPkgs.haskoin-store)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.nqe)
            (hsPkgs.rocksdb-haskell)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }