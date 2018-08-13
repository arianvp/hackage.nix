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
        name = "regions-mtl";
        version = "0.3.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "mtl instances for the RegionT monad transformer";
      description = "";
      buildType = "Simple";
    };
    components = {
      "regions-mtl" = {
        depends  = [
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.mtl)
          (hsPkgs.regions)
        ];
      };
    };
  }