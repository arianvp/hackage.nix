{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "redis-io";
          version = "0.4.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2014-2015 Toralf Wittner";
        maintainer = "Toralf Wittner <tw@dtex.org>";
        author = "Toralf Wittner";
        homepage = "https://github.com/twittner/redis-io/";
        url = "";
        synopsis = "Yet another redis client.";
        description = "Yet another redis client.";
        buildType = "Simple";
      };
      components = {
        "redis-io" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.auto-update
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.operational
            hsPkgs.redis-resp
            hsPkgs.resource-pool
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.tinylog
          ];
        };
        tests = {
          "redis-io-tests" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-conversion
              hsPkgs.containers
              hsPkgs.redis-io
              hsPkgs.redis-resp
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tinylog
              hsPkgs.transformers
            ];
          };
        };
        benchmarks = {
          "redis-io-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.hedis
              hsPkgs.redis-io
              hsPkgs.redis-resp
              hsPkgs.tinylog
              hsPkgs.transformers
            ];
          };
        };
      };
    }