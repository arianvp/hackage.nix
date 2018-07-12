{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "diff3";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Oliver Charles";
        maintainer = "Oliver Charles <ollie@ocharles.org.uk>";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/diff3.git";
        url = "";
        synopsis = "Perform a 3-way difference of documents";
        description = "";
        buildType = "Simple";
      };
      components = {
        "diff3" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Diff
          ];
        };
        tests = {
          "properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.diff3
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }