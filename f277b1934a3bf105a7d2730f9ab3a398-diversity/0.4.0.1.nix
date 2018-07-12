{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "diversity";
          version = "0.4.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "gregory.schwartz@drexel.edu";
        author = "Gregory W. Schwartz";
        homepage = "https://github.com/GregorySchwartz/diversity";
        url = "";
        synopsis = "Return the diversity at each position for all sequences in a fasta file";
        description = "Find the diversity of a collection of entities, mainly for use with fasta sequences. Produces a binary which works on fasta files to find the diversity of any order and rarefaction curves for a sliding window across all positions in the sequences. To analyze just a collection of entities, just use the whole sequences and list flag.";
        buildType = "Simple";
      };
      components = {
        "diversity" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.split
            hsPkgs.parsec
            hsPkgs.fasta
            hsPkgs.math-functions
          ];
        };
        exes = {
          "diversity" = {
            depends  = [
              hsPkgs.diversity
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.fasta
            ];
          };
        };
      };
    }