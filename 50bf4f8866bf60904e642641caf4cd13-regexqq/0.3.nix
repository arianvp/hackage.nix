{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regexqq";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Matt Morrow";
        maintainer = "Matt Morrow <morrow@jypsis.com>";
        author = "Matt Morrow";
        homepage = "http://code.haskell.org/~morrow/code/haskell/regexqq";
        url = "";
        synopsis = "A quasiquoter for PCRE regexes.";
        description = "A quasiquoter for Text.Regex.PCRE regexes.\nThis makes use of a new GHC extension known as QuasiQuotes.\nQuasiQuotes do not appear in ghc until 6.9, BUT there is a\npatch for ghc-6.8.3 which adds quasiquote functionality. A\npatched version of ghc-6.8.3, made possible by audreyt's patch, is at\n<http://code.haskell.org/~morrow/quasiquotes/ghc-6.8.3_QQ-0.1.tar.bz2>.\nAn example of the use of @regexqq@ is located at\n<http://code.haskell.org/~morrow/quasiquotes/regexqq.txt>";
        buildType = "Simple";
      };
      components = {
        "regexqq" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.pcre-light
          ];
        };
      };
    }