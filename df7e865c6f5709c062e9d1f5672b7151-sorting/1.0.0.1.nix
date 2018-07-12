{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sorting";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "© 2015 Hardy Jones";
        maintainer = "jones3.hardy@gmail.com";
        author = "Hardy Jones";
        homepage = "https://github.com/joneshf/sorting";
        url = "";
        synopsis = "Utils for sorting.";
        description = "Utils for sorting.";
        buildType = "Simple";
      };
      components = {
        "sorting" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }