{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wrap";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Wrap a function's return value with another function";
        description = "Wrap a function's return value with another function";
        buildType = "Simple";
      };
      components = {
        "wrap" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }