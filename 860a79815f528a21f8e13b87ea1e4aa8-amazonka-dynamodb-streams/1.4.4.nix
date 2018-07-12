{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-dynamodb-streams";
          version = "1.4.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2016 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon DynamoDB Streams SDK.";
        description = "Amazon DynamoDB\nAmazon DynamoDB Streams provides API actions for accessing streams and processing stream records. To learn more about application development with Streams, see <http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html Capturing Table Activity with DynamoDB Streams> in the Amazon DynamoDB Developer Guide.\nThe following are short descriptions of each low-level DynamoDB Streams action:\n-   /DescribeStream/ - Returns detailed information about a particular stream.\n-   /GetRecords/ - Retrieves the stream records from within a shard.\n-   /GetShardIterator/ - Returns information on how to retrieve the streams record from a shard with a given shard ID.\n-   /ListStreams/ - Returns a list of all the streams associated with the current AWS account and endpoint.\n\nThe types from this library are intended to be used with\n<http://hackage.haskell.org/package/amazonka amazonka>, which provides\nmechanisms for specifying AuthN/AuthZ information and sending requests.\n\nUse of lenses is required for constructing and manipulating types.\nThis is due to the amount of nesting of AWS types and transparency regarding\nde/serialisation into more palatable Haskell values.\nThe provided lenses should be compatible with any of the major lens libraries\nsuch as <http://hackage.haskell.org/package/lens lens> or\n<http://hackage.haskell.org/package/lens-family-core lens-family-core>.\n\nSee \"Network.AWS.DynamoDBStreams\" or <https://aws.amazon.com/documentation/ the AWS Documentation>\nto get started.";
        buildType = "Simple";
      };
      components = {
        "amazonka-dynamodb-streams" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
        tests = {
          "amazonka-dynamodb-streams-test" = {
            depends  = [
              hsPkgs.amazonka-core
              hsPkgs.amazonka-test
              hsPkgs.amazonka-dynamodb-streams
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }