{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "Thrift";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "thrift-user-subscribe@incubator.apache.org";
        author = "";
        homepage = "http://incubator.apache.org/thrift";
        url = "";
        synopsis = "Thrift library package";
        description = "The Thrift Haskell package that shipped with Thrift v.0.2.0, released under the Apache 2.0 license.";
        buildType = "Simple";
      };
      components = {
        "Thrift" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.ghc-prim
          ];
        };
      };
    }