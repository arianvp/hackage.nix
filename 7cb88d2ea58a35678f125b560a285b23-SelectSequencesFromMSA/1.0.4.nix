{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "SelectSequencesFromMSA";
          version = "1.0.4";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "egg@informatik.uni.freiburg.de";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Selects a representative subset of sequences from multiple sequence alignment.";
        description = "SelectSequences is a tool for selection of a representative subset of sequences from a multiple sequence alignment in clustal format.\n\nOptional Dependencies:\n\n* <https://www.tbi.univie.ac.at/~wash/RNAz/ RNAz>\nInstallation via cabal-install:\n\n> cabal install SelectSequencesFromMSA";
        buildType = "Simple";
      };
      components = {
        "SelectSequencesFromMSA" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmdargs
            hsPkgs.ViennaRNAParser
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.biofasta
            hsPkgs.parsec
            hsPkgs.biocore
            hsPkgs.bytestring
            hsPkgs.either-unwrap
            hsPkgs.containers
            hsPkgs.ClustalParser
            hsPkgs.vector
            hsPkgs.matrix
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.text-metrics
          ];
        };
        exes = {
          "SelectSequencesFromMSA" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.either-unwrap
              hsPkgs.SelectSequencesFromMSA
              hsPkgs.directory
            ];
          };
        };
      };
    }