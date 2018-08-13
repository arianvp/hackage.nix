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
      specVersion = "1.2";
      identifier = {
        name = "Glob";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+glob@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/glob/";
      url = "";
      synopsis = "Globbing library";
      description = "A library for globbing: matching patterns against file paths.";
      buildType = "Simple";
    };
    components = {
      "Glob" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }