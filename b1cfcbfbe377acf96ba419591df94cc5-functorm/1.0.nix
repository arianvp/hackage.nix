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
      specVersion = "0";
      identifier = {
        name = "functorm";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Data.FunctorM (compatibility package)";
      description = "This is the Data.FunctorM module from 6.6's base, deleted from HEAD still used\nby some projects (notably jhc); this package can be used for compatibility.";
      buildType = "Custom";
    };
    components = {
      "functorm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
        ];
      };
    };
  }