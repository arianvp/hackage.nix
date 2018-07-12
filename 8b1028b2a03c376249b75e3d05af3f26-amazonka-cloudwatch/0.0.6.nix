{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-cloudwatch";
          version = "0.0.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon CloudWatch SDK.";
        description = "Amazon CloudWatch is a monitoring service for AWS cloud resources and the\napplications you run on AWS. You can use Amazon CloudWatch to collect and\ntrack metrics, collect and monitor log files, and set alarms. Amazon\nCloudWatch can monitor AWS resources such as Amazon EC2 instances, Amazon\nDynamoDB tables, and Amazon RDS DB instances, as well as custom metrics\ngenerated by your applications and services, and any log files your\napplications generate. You can use Amazon CloudWatch to gain system-wide\nvisibility into resource utilization, application performance, and\noperational health. You can use these insights to react and keep your\napplication running smoothly.\n\n/See:/ <http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        "amazonka-cloudwatch" = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }