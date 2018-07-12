{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      library-only = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stratosphere";
          version = "0.4.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "https://github.com/frontrowed/stratosphere#readme";
        url = "";
        synopsis = "EDSL for AWS CloudFormation";
        description = "EDSL for AWS CloudFormation";
        buildType = "Simple";
      };
      components = {
        "stratosphere" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          "apigw-lambda-dynamodb" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stratosphere
            ];
          };
          "auto-scaling-group" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stratosphere
            ];
          };
          "ec2-with-eip" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stratosphere
            ];
          };
          "rds-master-replica" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stratosphere
            ];
          };
          "s3-copy" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stratosphere
            ];
          };
          "simple-lambda" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stratosphere
            ];
          };
        };
        tests = {
          "style" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.hlint
            ];
          };
          "tasty" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.hashable
              hsPkgs.lens
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.base
              hsPkgs.stratosphere
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
      };
    }