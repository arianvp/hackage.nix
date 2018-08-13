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
      specVersion = "1.9.2";
      identifier = {
        name = "cspmchecker";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Thomas Gibson-Robinson";
      maintainer = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      author = "Thomas Gibson-Robinson <thomas.gibsonrobinson@gmail.com>";
      homepage = "https://github.com/tomgr/libcspm";
      url = "";
      synopsis = "A command line type checker for CSPM files.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cspmchecker" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libcspm)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }