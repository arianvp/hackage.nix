{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "old-locale";
          version = "1.0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "locale library";
        description = "This package provides the ability to adapt to\nlocale conventions such as date and time formats.";
        buildType = "Simple";
      };
      components = {
        "old-locale" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }