{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-transport-tests";
          version = "0.2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "edsko@well-typed.com, watson.timothy@gmail.com";
        author = "Edsko de Vries";
        homepage = "http://haskell-distributed.github.com";
        url = "";
        synopsis = "Unit tests for Network.Transport implementations";
        description = "";
        buildType = "Simple";
      };
      components = {
        "network-transport-tests" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network-transport
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.ansi-terminal
          ];
        };
      };
    }