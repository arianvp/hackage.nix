{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgrest-ws";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Diogo Biazus";
        maintainer = "diogo@biazus.me";
        author = "Diogo Biazus";
        homepage = "https://github.com/diogob/postgrest-ws#readme";
        url = "";
        synopsis = "PostgREST extension to map LISTEN/NOTIFY messages to Websockets";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "postgrest-ws" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hasql-pool
            hsPkgs.text
            hsPkgs.wai
            hsPkgs.websockets
            hsPkgs.wai-websockets
            hsPkgs.postgrest
            hsPkgs.http-types
            hsPkgs.bytestring
            hsPkgs.postgresql-libpq
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.postgresql-libpq
            hsPkgs.aeson
            hsPkgs.string-conversions
          ];
        };
        exes = {
          "postgrest-ws" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.string-conversions
              hsPkgs.hasql
              hsPkgs.hasql-pool
              hsPkgs.warp
              hsPkgs.unix
              hsPkgs.jwt
              hsPkgs.postgrest
              hsPkgs.postgrest-ws
              hsPkgs.postgresql-libpq
            ];
          };
        };
        tests = {
          "postgrest-ws-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.postgrest-ws
            ];
          };
        };
      };
    }