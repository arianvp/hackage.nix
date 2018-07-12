{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "safecopy-migrate";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "yom@artyom.me";
        author = "Artyom";
        homepage = "http://github.com/aelve/safecopy-migrate";
        url = "";
        synopsis = "Making SafeCopy migrations easier";
        description = "Making SafeCopy migrations easier";
        buildType = "Simple";
      };
      components = {
        "safecopy-migrate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.extra
            hsPkgs.haskell-src-meta
            hsPkgs.microlens
            hsPkgs.safecopy
            hsPkgs.template-haskell
            hsPkgs.uniplate
          ];
        };
      };
    }