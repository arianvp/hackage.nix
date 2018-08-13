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
        name = "quiver-sort";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Sort the values in a quiver";
      description = "Allows sorting values within a Quiver, including using external\nfiles for large/long pipelines.";
      buildType = "Simple";
    };
    components = {
      "quiver-sort" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.quiver)
          (hsPkgs.quiver-binary)
          (hsPkgs.quiver-bytestring)
          (hsPkgs.quiver-groups)
          (hsPkgs.quiver-instances)
          (hsPkgs.quiver-interleave)
          (hsPkgs.resourcet)
          (hsPkgs.temporary)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "sorting-tests" = {
          depends  = [
            (hsPkgs.quiver-sort)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.quiver)
            (hsPkgs.quiver-instances)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }