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
        name = "vector-instances";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/vector-instances";
      url = "";
      synopsis = "Orphan Instances for 'Data.Vector'";
      description = "";
      buildType = "Simple";
    };
    components = {
      "vector-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.semigroupoids)
          (hsPkgs.semigroups)
          (hsPkgs.comonad)
          (hsPkgs.pointed)
          (hsPkgs.keys)
        ];
      };
    };
  }