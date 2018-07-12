{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4.0";
        identifier = {
          name = "BiobaseXNA";
          version = "0.5.2.0";
        };
        license = "GPL-3.0-only";
        copyright = "Christian Hoener zu Siederdissen, 2011";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "http://www.tbi.univie.ac.at/~choener/";
        url = "";
        synopsis = "Efficient RNA/DNA representations";
        description = "This is a base library for bioinformatics with emphasis on RNA\nand DNA primary structure and related tools. Provided are\nefficient encodings for short sequences, as required by RNA\nfolding tools. Extended RNA secondary structures can be\nrepresented as well.\n\nChanges since 0.5.1.0\n\n* bonusTable for constrained folding";
        buildType = "Simple";
      };
      components = {
        "BiobaseXNA" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.tuple
            hsPkgs.vector
            hsPkgs.vector-read-instances
            hsPkgs.PrimitiveArray
          ];
        };
      };
    }