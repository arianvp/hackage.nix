{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "histogram-fill-cereal";
        version = "0.6.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov";
      homepage = "http://bitbucket.org/Shimuuar/histogram-fill-cereal/";
      url = "";
      synopsis = "Library for histograms creation.";
      description = "Cereal instances for histogram-fill package\n\nChanges in 0.6.2.0\n\n* Instance for 'MaybeBin' added";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.vector)
          (hsPkgs.histogram-fill)
        ];
      };
    };
  }