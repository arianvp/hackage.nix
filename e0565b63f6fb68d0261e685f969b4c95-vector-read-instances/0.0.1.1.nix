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
      specVersion = "1.4.0";
      identifier = {
        name = "vector-read-instances";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Read instances for 'Data.Vector'";
      description = "Read instances for 'Data.Vector'. Right now, only for unboxed\nvectors. Others should be easy to implement, though.\n\nIt is planned to have read instances included in the vector\nlibrary in the future. This release is only temporary.";
      buildType = "Simple";
    };
    components = {
      "vector-read-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
    };
  }