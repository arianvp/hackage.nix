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
        name = "intern";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/intern/";
      url = "";
      synopsis = "Efficient hash-consing for arbitrary data types";
      description = "Efficient hash-consing for arbitrary data types";
      buildType = "Simple";
    };
    components = {
      "intern" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }