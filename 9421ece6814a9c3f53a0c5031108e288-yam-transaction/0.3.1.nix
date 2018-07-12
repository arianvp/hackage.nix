{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yam-transaction";
          version = "0.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Daniel YU <leptonyu@gmail.com>";
        author = "";
        homepage = "https://github.com/leptonyu/yam#readme";
        url = "";
        synopsis = "Yam transaction";
        description = "transaction module for yam";
        buildType = "Simple";
      };
      components = {
        "yam-transaction" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.data-default
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-postgresql
            hsPkgs.persistent-sqlite
            hsPkgs.resourcet
            hsPkgs.string-conversions
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unliftio-core
            hsPkgs.yam-logger
          ];
        };
      };
    }