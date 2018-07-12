{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-variates";
          version = "0.1.5.0";
        };
        license = "MIT";
        copyright = "(c) 2015, Keynan James Pratt";
        maintainer = "Keynan James Pratt <keynan.pratt@gmail.com>";
        author = "Keynan James Pratt <keynan.pratt@gmail.com>";
        homepage = "https://bitbucket.org/kpratt/random-variate";
        url = "";
        synopsis = "\"Uniform RNG => Non-Uniform RNGs\"";
        description = "\"Collection of transforms uniform random number generators (RNGs) into any of a dozen common RNGs. Each presenting several common interfaces. Additionally Empirical distributions can be sampled from and tested (chi-squared) against theoretical distributions.\"";
        buildType = "Simple";
      };
      components = {
        "random-variates" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.random
            hsPkgs.reinterpret-cast
            hsPkgs.mtl
            hsPkgs.erf
            hsPkgs.bytestring
            hsPkgs.binary
          ];
        };
        exes = {
          "Gen" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random-variates
            ];
          };
        };
        tests = {
          "vis" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.random-variates
            ];
          };
          "units" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.random-variates
              hsPkgs.random
            ];
          };
        };
      };
    }