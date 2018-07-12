{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "url";
          version = "2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Iavor S. Diatchki";
        homepage = "http://www.haskell.org/haskellwiki/Url";
        url = "";
        synopsis = "A library for working with URLs.";
        description = "A library for working with URLs.";
        buildType = "Simple";
      };
      components = {
        "url" = {
          depends  = [
            hsPkgs.base
            hsPkgs.utf8-string
          ];
        };
      };
    }