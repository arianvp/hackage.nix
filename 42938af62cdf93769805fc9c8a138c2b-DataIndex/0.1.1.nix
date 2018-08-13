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
        name = "DataIndex";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Yuhang(Steven) Wang";
      author = "";
      homepage = "https://github.com/yuhangwang/DataIndex#readme";
      url = "";
      synopsis = "A package for adding index column to data files";
      description = "DataIndex can add index column to data files";
      buildType = "Simple";
    };
    components = {
      "DataIndex" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "DataIndex" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.DataIndex)
          ];
        };
      };
      tests = {
        "DataIndex-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.DataIndex)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
      benchmarks = {
        "DataIndex-benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.DataIndex)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }