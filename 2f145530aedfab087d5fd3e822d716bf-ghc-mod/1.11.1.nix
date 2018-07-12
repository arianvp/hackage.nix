{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ghc-mod";
          version = "1.11.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/ghc-mod/";
        url = "";
        synopsis = "Happy Haskell programming on Emacs/Vim";
        description = "This packages includes Elisp files\nand a Haskell command, \"ghc-mod\".\n\"ghc*.el\" enable completion of\nHaskell symbols on Emacs.\nFlymake is also integrated.\n\"ghc-mod\" is a backend of \"ghc*.el\".\nIt lists up all installed modules\nor extracts names of functions, classes,\nand data declarations.\nTo use \"ghc-mod\" on Vim,\nsee <https://github.com/eagletmt/ghcmod-vim> or\n<https://github.com/scrooloose/syntastic>";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ghc-mod" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.convertible
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.ghc-syb-utils
              hsPkgs.hlint
              hsPkgs.io-choice
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.regex-posix
              hsPkgs.syb
              hsPkgs.time
              hsPkgs.transformers
            ];
          };
        };
      };
    }