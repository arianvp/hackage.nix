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
        name = "dataflow";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "oskar.wickstrom@live.com";
      author = "Oskar Wickström";
      homepage = "";
      url = "";
      synopsis = "Generate Graphviz documents from a Haskell representation.";
      description = "Outputs .dot files that can be processed by the dot\ncommand. Currently it only supports the DFD format.";
      buildType = "Simple";
    };
    components = {
      "dataflow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }