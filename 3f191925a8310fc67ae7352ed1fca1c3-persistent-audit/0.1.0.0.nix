{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "persistent-audit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mchaver@gmail.com";
        author = "James M.C. Haver II";
        homepage = "";
        url = "";
        synopsis = "Parses a Persist Model file and produces Audit Models";
        description = "Simplify database audits";
        buildType = "Simple";
      };
      components = {
        "persistent-audit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.mongoDB
            hsPkgs.persistent
            hsPkgs.persistent-mongoDB
            hsPkgs.persistent-template
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        exes = {
          "persistent-audit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.getopt-generics
              hsPkgs.mongoDB
              hsPkgs.persistent
              hsPkgs.persistent-mongoDB
              hsPkgs.persistent-template
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.mongoDB
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.persistent-mongoDB
              hsPkgs.persistent-template
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
      };
    }