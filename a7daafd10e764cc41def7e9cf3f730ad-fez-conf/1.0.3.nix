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
      specVersion = "1.8";
      identifier = {
        name = "fez-conf";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/fez-conf.html";
      url = "";
      synopsis = "Simple functions for loading config files";
      description = "Simple functions for loading config files. This entire package is DEPRECATED! Use TCE.Data.KVConf in tce-conf";
      buildType = "Simple";
    };
    components = {
      "fez-conf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.regex-compat)
        ];
      };
    };
  }