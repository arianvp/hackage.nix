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
        name = "config-schema";
        version = "0.3.1.0";
      };
      license = "ISC";
      copyright = "Eric Mertens 2017";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/config-schema";
      url = "";
      synopsis = "Schema definitions for the config-value package";
      description = "This package makes it possible to defined schemas for use when\nloading configuration files using the config-value format.\nThese schemas can be used to be process a configuration file into\na Haskell value, or to automatically generate documentation for\nthe file format.";
      buildType = "Simple";
    };
    components = {
      "config-schema" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.config-value)
          (hsPkgs.containers)
          (hsPkgs.free)
          (hsPkgs.kan-extensions)
          (hsPkgs.pretty)
          (hsPkgs.semigroupoids)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.config-value)
            (hsPkgs.config-schema)
            (hsPkgs.text)
          ];
        };
      };
    };
  }