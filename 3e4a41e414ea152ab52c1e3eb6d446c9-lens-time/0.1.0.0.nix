{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lens-time";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tatsuya.touma@gmail.com";
        author = "Tatsuya Touma";
        homepage = "";
        url = "";
        synopsis = "lens for Data.Time";
        description = "lens for Data.Time\nCurrently, It works UTCTime only.";
        buildType = "Simple";
      };
      components = {
        "lens-time" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.time
          ];
        };
      };
    }