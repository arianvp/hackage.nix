{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsc3-unsafe";
          version = "0.8";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, 2006-2010";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://slavepianos.org/rd/?t=hsc3-unsafe";
        url = "";
        synopsis = "Unsafe Haskell SuperCollider";
        description = "hsc3 provides Sound.SC3.UGen.Unsafe.";
        buildType = "Simple";
      };
      components = {
        "hsc3-unsafe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsc3
          ];
        };
      };
    }