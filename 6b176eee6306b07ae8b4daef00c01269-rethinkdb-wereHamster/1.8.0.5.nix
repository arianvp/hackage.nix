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
        name = "rethinkdb-wereHamster";
        version = "1.8.0.5";
      };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Etienne Laurin <etienne@atnnn.com>";
      author = "Etienne Laurin";
      homepage = "http://github.com/atnnn/haskell-rethinkdb";
      url = "";
      synopsis = "RethinkDB driver for Haskell";
      description = "RethinkDB is a distributed document store with a powerful query language.";
      buildType = "Simple";
    };
    components = {
      "rethinkdb-wereHamster" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.protocol-buffers)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.data-default)
          (hsPkgs.network)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }