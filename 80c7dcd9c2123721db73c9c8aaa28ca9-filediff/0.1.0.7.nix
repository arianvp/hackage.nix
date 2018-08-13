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
        name = "filediff";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgwines@cs.stanford.edu";
      author = "Brett Wines";
      homepage = "https://github.com/bgwines/filediff";
      url = "";
      synopsis = "Diffing and patching module";
      description = "`filediff` is a Haskell library for creating diffs, and applying diffs to files and directories.";
      buildType = "Simple";
    };
    components = {
      "filediff" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.data-memocombinators)
          (hsPkgs.Zora)
          (hsPkgs.text)
          (hsPkgs.data-default)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hunit)
        ];
      };
      tests = {
        "test-filediff" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.filediff)
            (hsPkgs.text)
          ];
        };
      };
    };
  }