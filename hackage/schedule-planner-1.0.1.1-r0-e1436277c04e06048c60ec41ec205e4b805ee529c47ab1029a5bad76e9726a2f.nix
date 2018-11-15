{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      noscraper = false;
      static = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "schedule-planner";
        version = "1.0.1.1";
      };
      license = "LGPL-3.0-only";
      copyright = "2015";
      maintainer = "Justus Adam <development@justusadam.com>";
      author = "Justus Adam <development@justusadam.com>";
      homepage = "";
      url = "";
      synopsis = "Find the ideal lesson layout";
      description = "Executable program for calculating layouts for fixed grid schedules as\nare used in many universities and schools.\nThe primary data format for in- and output is json. A deployable server\ninstance of this software is also available.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "schedule-planner" = {
          depends  = if !flags.noscraper
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.aeson)
              (hsPkgs.options)
              (hsPkgs.transformers)
              (hsPkgs.bytestring)
              (hsPkgs.text)
              (hsPkgs.warp)
              (hsPkgs.wai)
              (hsPkgs.mtl)
              (hsPkgs.http-types)
              (hsPkgs.composition)
              (hsPkgs.HTTP)
              (hsPkgs.text-icu)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.aeson)
              (hsPkgs.options)
              (hsPkgs.transformers)
              (hsPkgs.bytestring)
              (hsPkgs.text)
              (hsPkgs.warp)
              (hsPkgs.wai)
              (hsPkgs.mtl)
              (hsPkgs.http-types)
              (hsPkgs.composition)
              (hsPkgs.HTTP)
            ];
        };
      };
    };
  }