{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-cassava";
        version = "0.7";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2016 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "Servant CSV content-type for cassava";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cassava)
          (hsPkgs.servant)
          (hsPkgs.http-media)
          (hsPkgs.vector)
        ];
      };
    };
  }