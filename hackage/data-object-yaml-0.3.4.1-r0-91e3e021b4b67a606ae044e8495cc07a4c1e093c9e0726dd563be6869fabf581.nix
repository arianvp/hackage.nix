{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "data-object-yaml";
        version = "0.3.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>, Anton Ageev <antage@gmail.com>";
      homepage = "http://github.com/snoyberg/data-object-yaml";
      url = "";
      synopsis = "Serialize data to and from Yaml files (deprecated)";
      description = "Future development will focus on the Data.Yaml module of the yaml package, which leverages aeson's existing Value type. This package is officially deprecated. Provides high level conversions based on the data-object package. Parsing and emitting is handled by the yaml package, which in turn uses the libyaml C library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-object)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.failure)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.convertible-text)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }