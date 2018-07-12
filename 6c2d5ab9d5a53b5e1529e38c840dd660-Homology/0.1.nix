{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Homology";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "damek@math.ucla.edu";
        author = "Damek Davis";
        homepage = "http://www.math.ucla.edu/~damek";
        url = "";
        synopsis = "Compute the homology of a chain complex";
        description = "This package currently computes the homology of a chain complex over Z/2Z.";
        buildType = "Simple";
      };
      components = {
        "Homology" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
          ];
        };
      };
    }