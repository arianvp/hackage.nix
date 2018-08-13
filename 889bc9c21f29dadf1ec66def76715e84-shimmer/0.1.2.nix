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
      specVersion = "1.6";
      identifier = {
        name = "shimmer";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "Ben Lippmeier <benl@ouroborus.net>";
      homepage = "";
      url = "";
      synopsis = "The Reflective Lambda Machine";
      description = "The Reflective Lambda Machine";
      buildType = "Simple";
    };
    components = {
      "shimmer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
        ];
      };
    };
  }