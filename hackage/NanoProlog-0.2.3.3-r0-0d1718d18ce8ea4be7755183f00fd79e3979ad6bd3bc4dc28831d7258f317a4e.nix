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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "NanoProlog"; version = "0.2.3.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jurriën Stutterheim <j.stutterheim@uu.nl>";
      author = "Doaitse Swierstra, Jurriën Stutterheim";
      homepage = "";
      url = "";
      synopsis = "Very small  interpreter for a Prolog-like language";
      description = "This package was developed to demonstrate the ideas behind\nthe Prolog language. It contains a very small interpreter\n(@Language.Prolog.Nanoprolog@) which can be run on its\nown. It reads a file with definitions, and then prompts\nfor a goal. All possibe solutions are printed, preceded by\na tree showing which rules were applied in which order.\n\nThe file @royals.pro@ contains a description of part of the Dutch royal family, whereas the file\n@tc.pro@ shows unification at work in a very small type inferencer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "nano-prolog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."uu-parsinglib" or (buildDepError "uu-parsinglib"))
            ];
          buildable = true;
          };
        };
      };
    }