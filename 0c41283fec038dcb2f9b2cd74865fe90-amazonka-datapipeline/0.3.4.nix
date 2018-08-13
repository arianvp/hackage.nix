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
      specVersion = "1.10";
      identifier = {
        name = "amazonka-datapipeline";
        version = "0.3.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2013-2014 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/amazonka";
      url = "";
      synopsis = "Amazon Data Pipeline SDK.";
      description = "AWS Data Pipeline is a web service that you can use to automate the movement\nand transformation of data. With AWS Data Pipeline, you can define\ndata-driven workflows, so that tasks can be dependent on the successful\ncompletion of previous tasks.\n\n/See:/ <http://docs.aws.amazon.com/datapipeline/latest/APIReference/Welcome.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
      buildType = "Simple";
    };
    components = {
      "amazonka-datapipeline" = {
        depends  = [
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
        ];
      };
    };
  }