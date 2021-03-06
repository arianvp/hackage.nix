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
    flags = { dynamic = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mohws"; version = "0.2.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Simon Marlow, Bjorn Bringert";
      maintainer = "Henning Thielemann <webserver@henning-thielemann.de>";
      author = "Simon Marlow, Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://code.haskell.org/mohws/";
      url = "";
      synopsis = "Modular Haskell Web Server";
      description = "A web server with a module system and support for CGI.\nBased on Simon Marlow's original Haskell Web Server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "hws" = { buildable = true; };
        "hws-dyn" = {
          depends = (pkgs.lib).optional (flags.dynamic) (hsPkgs."ghc" or (buildDepError "ghc"));
          buildable = if flags.dynamic then true else false;
          };
        };
      };
    }