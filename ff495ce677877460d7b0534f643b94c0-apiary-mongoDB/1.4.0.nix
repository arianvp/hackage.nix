{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apiary-mongoDB";
          version = "1.4.0";
        };
        license = "MIT";
        copyright = "(c) 2014-2015 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/apiary";
        url = "";
        synopsis = "mongoDB support for apiary web framework.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "apiary-mongoDB" = {
          depends  = [
            hsPkgs.base
            hsPkgs.apiary
            hsPkgs.mongoDB
            hsPkgs.resource-pool
            hsPkgs.data-default-class
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.lifted-base
            hsPkgs.bson
            hsPkgs.monad-control
            hsPkgs.text
            hsPkgs.types-compat
          ];
        };
      };
    }