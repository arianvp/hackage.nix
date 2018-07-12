{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "locators";
          version = "0.2.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "© 2013 Operational Dynamics Consultin, Pty Ltd and Others";
        maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
        author = "Andrew Cowie <andrew@operationaldynamics.com>";
        homepage = "";
        url = "";
        synopsis = "Human exchangable identifiers and locators";
        description = "";
        buildType = "Simple";
      };
      components = {
        "locators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.cereal
          ];
        };
        tests = {
          "check" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.cereal
            ];
          };
        };
      };
    }