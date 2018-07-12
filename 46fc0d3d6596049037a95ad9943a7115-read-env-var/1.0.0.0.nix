{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "read-env-var";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Dennis Gosnell";
        maintainer = "cdep.illabout@gmail.com";
        author = "Dennis Gosnell";
        homepage = "https://github.com/cdepillabout/read-env-var#readme";
        url = "";
        synopsis = "Functions for safely reading environment variables.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "read-env-var" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.transformers
          ];
        };
        tests = {
          "read-env-var-doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.Glob
            ];
          };
        };
      };
    }