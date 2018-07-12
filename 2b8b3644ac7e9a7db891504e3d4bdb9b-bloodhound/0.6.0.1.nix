{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developmentmode = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bloodhound";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Chris Allen";
        maintainer = "cma@bitemyapp.com";
        author = "Chris Allen";
        homepage = "https://github.com/bitemyapp/bloodhound";
        url = "";
        synopsis = "ElasticSearch client library for Haskell";
        description = "ElasticSearch made awesome for Haskell hackers";
        buildType = "Custom";
      };
      components = {
        "bloodhound" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.http-client
            hsPkgs.semigroups
            hsPkgs.time
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.http-types
            hsPkgs.vector
            hsPkgs.uri-bytestring
            hsPkgs.exceptions
            hsPkgs.data-default-class
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bloodhound
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.text
              hsPkgs.time
              hsPkgs.aeson
              hsPkgs.semigroups
              hsPkgs.QuickCheck
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.mtl
              hsPkgs.quickcheck-properties
            ];
          };
          "doctests" = {
            depends  = pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.8") [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.doctest-prop
              hsPkgs.filepath
            ];
          };
        };
      };
    }