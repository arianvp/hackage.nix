{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "heapsort";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright © 2010 Bart Massey";
        maintainer = "Bart Massey <bart@cs.pdx.edu>";
        author = "Bart Massey <bart@cs.pdx.edu>";
        homepage = "http://wiki.cs.pdx.edu/bartforge/heapsort";
        url = "";
        synopsis = "Heapsort of MArrays as a demo of imperative programming";
        description = "Heapsort of MArrays";
        buildType = "Custom";
      };
      components = {
        "heapsort" = {};
        exes = {
          "heapsort-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
            ];
          };
          "heapsort-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }