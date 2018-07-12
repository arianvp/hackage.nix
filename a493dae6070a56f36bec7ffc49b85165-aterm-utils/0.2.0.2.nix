{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aterm-utils";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Galois, Inc";
        maintainer = "dagit@galois.com";
        author = "Jason Dagit";
        homepage = "https://github.com/GaloisInc/aterm-utils";
        url = "";
        synopsis = "Utility functions for working with aterms as generated by Minitermite";
        description = "";
        buildType = "Simple";
      };
      components = {
        "aterm-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aterm
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.wl-pprint
          ];
        };
        exes = {
          "ppaterm" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aterm
              hsPkgs.aterm-utils
              hsPkgs.transformers
              hsPkgs.wl-pprint
            ];
          };
        };
      };
    }