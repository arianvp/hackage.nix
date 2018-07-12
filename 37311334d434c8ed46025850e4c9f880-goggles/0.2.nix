{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "goggles";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Marco Zocca";
        maintainer = "zocca.marco gmail";
        author = "Marco Zocca";
        homepage = "https://github.com/ocramz/goggles";
        url = "";
        synopsis = "Interface to Google Cloud APIs";
        description = "High-level, extensible interface to Google Cloud APIs.";
        buildType = "Simple";
      };
      components = {
        "goggles" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.scientific
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.req
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.pem
            hsPkgs.x509
            hsPkgs.x509-store
            hsPkgs.unix-time
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.time
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.filepath
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.goggles
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }