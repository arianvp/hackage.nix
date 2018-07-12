{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deepseq-generics";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2012, Herbert Valerio Riedel";
        maintainer = "hvr@gnu.org";
        author = "Herbert Valerio Riedel";
        homepage = "https://github.com/hvr/deepseq-generics";
        url = "";
        synopsis = "GHC.Generics-based Control.DeepSeq.rnf implementation";
        description = "This package provides a \"GHC.Generics\"-based\n'Control.DeepSeq.Generics.genericRnf' function which can be used\nfor providing a 'rnf' implementation. See the documentation for\nthe 'genericRnf' function in the \"Control.DeepSeq.Generics\" module\nto get started.\n\nThe original idea was pioneered in the @generic-deepseq@ package\n(see <http://www.haskell.org/pipermail/haskell-cafe/2012-February/099551.html>\nfor more information).\n\nThis package differs from the @generic-deepseq@ package by working\nin combination with the existing @deepseq@ package as opposed to\ndefining a conflicting drop-in replacement for @deepseq@'s\n@Control.DeepSeq@ module.\n\n__Note__: The ability to auto-derive via \"GHC.Generics\" has been\nmerged into @deepseq-1.4.0.0@. This package is now still useful\nfor writing code that's also compatible with older @deepseq@\nversions not yet providing \"GHC.Generics\"-support.";
        buildType = "Simple";
      };
      components = {
        "deepseq-generics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.deepseq
          ];
        };
        tests = {
          "deepseq-generics-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.deepseq-generics
              hsPkgs.ghc-prim
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }