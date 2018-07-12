{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "substring-parser";
          version = "0.3.0.0";
        };
        license = "Apache-2.0";
        copyright = "2017 Yuji Yamamoto";
        maintainer = "whosekiteneverfly@gmail.com";
        author = "Yuji Yamamoto";
        homepage = "https://gitlab.com/igrep/substring-parser";
        url = "";
        synopsis = "Match / replace substrings with a parser combinators.";
        description = "See README.md";
        buildType = "Simple";
      };
      components = {
        "substring-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.NoTrace
            hsPkgs.attoparsec
            hsPkgs.text
          ];
        };
        tests = {
          "substring-parser-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.NoTrace
              hsPkgs.attoparsec
              hsPkgs.text
              hsPkgs.substring-parser
              hsPkgs.containers
              hsPkgs.hspec
            ];
          };
        };
      };
    }