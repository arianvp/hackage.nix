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
        name = "HMap";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzeus@gmail.com";
      author = "Atze van der Ploeg";
      homepage = "https://github.com/atzeus/HMap";
      url = "";
      synopsis = "Fast heterogeneous maps and unconstrained typeable like functionality.";
      description = "Fast heterogeneous maps based on Hashmaps  and type-able like functionality for type that are not typeable.";
      buildType = "Simple";
    };
    components = {
      "HMap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
        ];
      };
    };
  }