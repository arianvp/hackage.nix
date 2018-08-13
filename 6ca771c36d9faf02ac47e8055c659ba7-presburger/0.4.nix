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
        name = "presburger";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/presburger";
      url = "";
      synopsis = "Cooper's decision procedure for Presburger arithmetic.";
      description = "Cooper's decision procedure for Presburger arithmetic.";
      buildType = "Simple";
    };
    components = {
      "presburger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
        ];
      };
    };
  }