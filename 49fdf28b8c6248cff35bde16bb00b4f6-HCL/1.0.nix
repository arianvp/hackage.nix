{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HCL";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgbailey _ gmail _ com";
        author = "Justin Bailey";
        homepage = "";
        url = "";
        synopsis = "High-level library for building command line interfaces.";
        description = "";
        buildType = "Custom";
      };
      components = {
        "HCL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.regex-compat
            hsPkgs.mtl
          ];
        };
        exes = {
          "hangman" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.regex-compat
              hsPkgs.mtl
            ];
          };
        };
      };
    }