{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "biohazard";
          version = "0.6.16";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010-2017 Udo Stenzel";
        maintainer = "udo.stenzel@eva.mpg.de";
        author = "Udo Stenzel";
        homepage = "http://github.com/udo-stenzel/biohazard";
        url = "";
        synopsis = "bioinformatics support library";
        description = "This is a collection of modules I separated from\nvarious bioinformatics tools.";
        buildType = "Simple";
      };
      components = {
        "biohazard" = {
          depends  = [
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.random
            hsPkgs.scientific
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.vector-th-unbox
            hsPkgs.zlib
          ];
        };
      };
    }