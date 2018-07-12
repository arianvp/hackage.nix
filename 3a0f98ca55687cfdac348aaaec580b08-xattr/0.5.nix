{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "xattr";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 by Evan Klitzke";
        maintainer = "Evan Klitzke <evan@eklitzke.org>";
        author = "Evan Klitzke";
        homepage = "";
        url = "";
        synopsis = "Haskell binding to libattr";
        description = "Stuff";
        buildType = "Configure";
      };
      components = {
        "xattr" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix
          ];
        };
      };
    }