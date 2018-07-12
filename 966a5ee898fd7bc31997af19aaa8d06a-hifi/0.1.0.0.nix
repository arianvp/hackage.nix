{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hifi";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Rickard Andersson";
        maintainer = "gonz@severnatazvezda.com";
        author = "Rickard Andersson";
        homepage = "https://gitlab.com/gonz/hifi";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hifi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mustache
            hsPkgs.directory
            hsPkgs.text
            hsPkgs.process
            hsPkgs.parsec
            hsPkgs.filepath
            hsPkgs.unix
          ];
        };
        exes = {
          "hifi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hifi
            ];
          };
        };
        tests = {
          "hifi-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hifi
            ];
          };
        };
      };
    }