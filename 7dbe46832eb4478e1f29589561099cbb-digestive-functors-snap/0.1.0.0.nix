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
        name = "digestive-functors-snap";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com";
      author = "Jasper Van der Jeugt";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Snap backend for the digestive-functors library";
      description = "This is a snap backend for the digestive-functors library.";
      buildType = "Simple";
    };
    components = {
      "digestive-functors-snap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.digestive-functors)
          (hsPkgs.snap-core)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }