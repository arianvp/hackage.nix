{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pulse";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/pulse#readme";
        url = "";
        synopsis = "Synchronize actions to a time pulse";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "pulse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.time
            hsPkgs.containers
          ];
        };
      };
    }