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
        name = "envy";
        version = "0.3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "David Johnson (c) 2015";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson, Tim Adams";
      homepage = "";
      url = "";
      synopsis = "An environmentally friendly way to deal with environment variables";
      description = "For package use information see the <https://github.com/dmjio/envy/blob/master/README.md README.md>";
      buildType = "Simple";
    };
    components = {
      "envy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.envy)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }