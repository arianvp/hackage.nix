{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "barrier-monad";
          version = "0.1.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Implementation of barrier monad, can use custom front/back type";
        description = "";
        buildType = "Simple";
      };
      components = {
        "barrier-monad" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.comonad
            hsPkgs.transformers
          ];
        };
      };
    }