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
      specVersion = "1.10";
      identifier = {
        name = "syntax-example";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example application using syntax, a library for abstract syntax descriptions.";
      description = "Example application using syntax, a library for abstract syntax descriptions.\n\nThe code:\n\n* <https://github.com/Pawel834/syntax-example/blob/83c283823749038db3d21aaf99105f456e25bac7/Main.hs Main.hs>\n\nExample input:\n\n> (\\f->\n> (\\x\n>      -> f     ((x) x)) (\\x\n> -> f  (x x)\n> )\n> (\\x -> \"test\")\n> (\\y -> y +2.0e13))\n\nExample output:\n\n> Abs \"f\" (App (App (App (Abs \"x\" (App (Var \"f\") (App (Var \"x\") (Var \"x\")))) (Abs \"x\" (App (Var \"f\") (App (Var \"x\") (Var \"x\"))))) (Abs \"x\" (Lit (LitStr \"test\")))) (Abs \"y\" (App (Var \"y\") (Lit (LitNum 2.0e13)))))\n> \\f -> (\\x -> f (x x)) (\\x -> f (x x)) (\\x -> \"test\") (\\y -> y 2.0e13)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "syntax-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.semi-iso)
            (hsPkgs.syntax)
            (hsPkgs.syntax-attoparsec)
            (hsPkgs.syntax-printer)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.scientific)
          ];
        };
      };
    };
  }