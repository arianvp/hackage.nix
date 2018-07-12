{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "flexiwrap-smallcheck";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
        author = "Iain Alexander <ia@stryx.demon.co.uk>";
        homepage = "";
        url = "";
        synopsis = "SmallCheck (Serial) instances for flexiwrap";
        description = "SmallCheck (Serial) instances for flexiwrap";
        buildType = "Simple";
      };
      components = {
        "flexiwrap-smallcheck" = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-type
            hsPkgs.mtl
            hsPkgs.flexiwrap
            hsPkgs.smallcheck
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "6.6.1") hsPkgs.special-functors;
        };
      };
    }