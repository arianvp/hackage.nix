{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "th-build";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Daniel Schüssler";
        maintainer = "daniels@community.haskell.org";
        author = "Daniel Schüssler";
        homepage = "https://github.com/DanielSchuessler/th-build";
        url = "";
        synopsis = "More convenient construction of TH ASTs";
        description = "The main feature here is implicit conversion of arguments to AST constructors: Tired of writing things like\n\n@\nvalD (varP (mkName \\\"foo\\\")) (normalB (appE (varE 'not) (conT 'True))) []\n@\n\n? With th-build:\n\n@\nvalD' \\\"foo\\\" (appE' 'not 'True) ()\n@\n\nHint: Use @()@ for an empty list argument to an autoconverting function, since @[]@ will yield an type ambiguity error.";
        buildType = "Simple";
      };
      components = {
        "th-build" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }