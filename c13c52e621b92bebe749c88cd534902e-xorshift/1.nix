{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xorshift";
          version = "1";
        };
        license = "LicenseRef-LGPL";
        copyright = "©2010 Robert Clausecker";
        maintainer = "Robert Clausecker";
        author = "Robert Clausecker  <fuzxxl@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Haskell implementation of the xorshift random generator.";
        description = "The Xorshift random generator is a very fast generator that uses\nonly XOR and bitshifting operations. This package contains a basic version\nwith a periode of 2^32-1 for 32-bit numbers and a version with a periode of\n2^64-1 for 64-bit numbers. The author didn't tested the random generator,\nbut according to it's specification the resulting numbers are of good\nquality.";
        buildType = "Simple";
      };
      components = {
        "xorshift" = {};
      };
    }