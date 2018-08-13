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
        name = "tabl";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/tabl";
      url = "";
      synopsis = "Table layout";
      description = "Text.Tabl arranges multiple Text instances into a\ntable layout while providing means of alignment\nvisual decoration both horizontally and vertically.";
      buildType = "Simple";
    };
    components = {
      "tabl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.text)
        ];
      };
    };
  }