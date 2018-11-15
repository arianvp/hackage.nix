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
      specVersion = "1.2";
      identifier = {
        name = "temporal-music-notation";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anton Kholomiov";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "music notation";
      description = "Library for expressing musical ideas. Includes composable score representation, microsound tunings, flexible pitch and volume control.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.temporal-media)
          (hsPkgs.type-level-natural-number-decimal)
        ];
      };
    };
  }