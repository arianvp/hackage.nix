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
      specVersion = "0";
      identifier = { name = "hsSqlite3"; version = "0.0.4"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007 Evgeny Jukov";
      maintainer = "Evgeny Jukov <masloed@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "http://macode.sourceforge.net";
      url = "";
      synopsis = "Sqlite3 bindings";
      description = "Bindings for Sqlite3";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."state" or (buildDepError "state"))
          ];
        buildable = true;
        };
      exes = {
        "hs_sqlite3_test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."state" or (buildDepError "state"))
            ];
          libs = [ (pkgs."sqlite3" or (sysDepError "sqlite3")) ];
          buildable = true;
          };
        };
      };
    }