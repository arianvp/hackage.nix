{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "regexpr";
        version = "0.5.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/regexpr/";
      url = "";
      synopsis = "regular expression like Perl/Ruby in Haskell";
      description = "Regular expression library like Perl and Ruby's regular expressions.\nThis package has a module RegexPR.\nAnd RegexPR export functions matchRegexPR and gsubRegexPR.\n\n> matchRegexPR      :: String -> String -> Maybe ((String, (String, String)), [(Int, String)])\n> multiMatchRegexPR :: String -> String -> [ ((String, (String, String)), [(Int, String)]) ]\n> gmatchRegexPR     :: String -> String -> [ ((String, (String, String)), [(Int, String)]) ]\n> getbrsRegexPR     :: String -> String -> [ String ]\n> ggetbrsRegexPR    :: String -> String -> [ [ String ] ]\n> subRegexPR        :: String -> String -> String -> String\n> subRegexPRBy      :: String -> (String -> String) -> String -> String\n> gsubRegexPR       :: String -> String -> String -> String\n> gsubRegexPRBy     :: String -> (String -> String) -> String -> String\n> splitRegexPR      :: String -> String -> [String]\n\nExamples\n\n> matchRegexPR \"ab(cde)f\\\\1\" \"kkkabcdefcdefgh\" =>\n>              Just ((\"abcdefcde\", (\"kkk\", \"fgh\")),[(1,\"cde\")])\n> matchRegexPR \"(?<=hij)abc\" \"kkkabchijabcde\" =>\n>              Just ((\"abc\",(\"kkkabchij\",\"de\")),[])\n> gsubRegexPR \"\\\\G(\\\\d\\\\d\\\\d)\" \"\\\\1,\" \"123456 789\" => \"123,456, 789\"\n> subRegexPR \"(?<=(.)(.)(.))e\" \" \\\\3\\\\2\\\\1 \" \"abcdefg\" => \"abcd dcb fg\"\n> gsubRegexPR \"(?ixm)  aBc  . # comment \\n\\n\" \"abc!\" \"abc\\nABCDAbcAbc\" =>\n>             \"abc!abc!abc!bc\"\n> gmatchRegexPR \"(?=(?<!(?!abc)))abc\" \"abcdefdefabc\" =>\n>              [((\"abc\", (\"\", \"defdefabc\")), []), ((\"abc\", (\"defdef\", \"\")), [])]\n> splitRegexPR \"\\\\s*,\\\\s*\" \"a,b ,c\\t ,d , e\" => [\"a\",\"b\",\"c\",\"d\",\"e\"]";
      buildType = "Simple";
    };
    components = {
      "regexpr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HUnit)
          (hsPkgs.mtlparse)
        ];
      };
    };
  }