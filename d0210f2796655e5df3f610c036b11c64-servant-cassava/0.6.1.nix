{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-cassava";
          version = "0.6.1";
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
        "servant-cassava" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cassava
            hsPkgs.servant
            hsPkgs.http-media
            hsPkgs.vector
          ];
        };
      };
    }