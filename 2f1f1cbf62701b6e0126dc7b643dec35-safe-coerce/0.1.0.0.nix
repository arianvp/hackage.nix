{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "safe-coerce";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kiss.csongor.kiss@gmail.com";
        author = "Csongor Kiss";
        homepage = "";
        url = "";
        synopsis = "A friendly shorthand for an old friend";
        description = "Safe?";
        buildType = "Simple";
      };
      components = {
        "safe-coerce" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }