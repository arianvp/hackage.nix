{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "parsers";
          version = "0.12.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010-2013 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/parsers/";
        url = "";
        synopsis = "Parsing combinators";
        description = "This library provides convenient combinators for working with and building parsing combinator libraries.\n\nGiven a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you\nget access to a large number of canned definitions. Instances exist for the parsers provided by @parsec@,\n@attoparsec@ and base’s \"Text.Read\".";
        buildType = "Custom";
      };
      components = {
        "parsers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-orphans
            hsPkgs.charset
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.parsers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
          "quickcheck" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.parsec
              hsPkgs.parsers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }