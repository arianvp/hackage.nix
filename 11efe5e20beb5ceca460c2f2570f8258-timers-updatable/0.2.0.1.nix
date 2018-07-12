{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "timers-updatable";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "paolo.veronelli@gmail.com";
        author = "Paolo Veronelli";
        homepage = "http://github.com/paolino/timers-updatable";
        url = "";
        synopsis = "timers which are updatable in the remaining time";
        description = "Timers implemented in this package can be used to synchronise threads to continue all together when the timer rings. While the timer is running it can be updated in the remaining time. A parallel and serial update policy is provided.";
        buildType = "Simple";
      };
      components = {
        "timers-updatable" = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
      };
    }