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
    flags = { tests = false; maxcount = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "filestore"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Gwern Branwen, Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Interface for versioning file stores.";
      description = "The filestore library provides an abstract interface for a versioning\nfile store, and modules that instantiate this interface.  Currently\nGit, Darcs, and Mercurial modules are provided, and other VCSs\nor databases could be added.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        buildable = true;
        };
      exes = {
        "test-filestore" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filestore" or (buildDepError "filestore"))
            ];
          buildable = if flags.tests then true else false;
          };
        };
      };
    }