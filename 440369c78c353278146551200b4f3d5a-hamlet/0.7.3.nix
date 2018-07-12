{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hamlet";
          version = "0.7.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://docs.yesodweb.com/";
        url = "";
        synopsis = "Haml-like template files that are compile-time checked";
        description = "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://docs.yesodweb.com/book/hamlet/> for more details.\n\nHere is a quick overview of hamlet html. Due to haddock escaping issues, we can't properly show variable insertion, but we are still going to show some conditionals. Please see http://docs.yesodweb.com/book/templates for a thorough description\n\n> !!!\n> <html\n>     <head\n>         <title>Hamlet Demo\n>     <body\n>         <h1>Information on John Doe\n>         <h2\n>             \$if isMarried person\n>                 Married\n>             \$else\n>                 Not married";
        buildType = "Simple";
      };
      components = {
        "hamlet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.blaze-html
            hsPkgs.parsec
            hsPkgs.failure
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.json-types
            hsPkgs.json-enumerator
            hsPkgs.blaze-builder
          ];
        };
        exes = {
          "runtests" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
            ];
          };
        };
      };
    }