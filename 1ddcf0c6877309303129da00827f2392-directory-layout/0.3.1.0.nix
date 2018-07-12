{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "directory-layout";
          version = "0.3.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "matvey.aksenov@gmail.com";
        author = "Matvey Aksenov";
        homepage = "";
        url = "";
        synopsis = "Declare, construct and verify directory layout";
        description = "Language to express directory layouts";
        buildType = "Simple";
      };
      components = {
        "directory-layout" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.data-default
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.lens
            hsPkgs.text
          ];
        };
        tests = {
          "basics-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory-layout
              hsPkgs.HUnit
              hsPkgs.process
              hsPkgs.QuickCheck
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory-layout
              hsPkgs.doctest
              hsPkgs.wordexp
              hsPkgs.lens
            ];
          };
        };
      };
    }