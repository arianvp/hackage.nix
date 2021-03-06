let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter-haskell"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "tclem@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/tree-sitter-haskell#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Haskell (with GHC extensions)";
      description = "This package provides a parser for Haskell suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."tree-sitter" or (buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-haskell-internal" or (buildDepError "tree-sitter-haskell-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-haskell-internal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tree-sitter" or (buildDepError "tree-sitter"))
            ];
          libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
          buildable = true;
          };
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tree-sitter" or (buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-haskell" or (buildDepError "tree-sitter-haskell"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }