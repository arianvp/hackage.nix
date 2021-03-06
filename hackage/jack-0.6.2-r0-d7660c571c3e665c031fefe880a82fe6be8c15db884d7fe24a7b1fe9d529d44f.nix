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
    flags = { pkgconfig = true; jackfree = true; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "jack"; version = "0.6.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn, Stefan Kersten, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."enumset" or (buildDepError "enumset"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = (pkgs.lib).optional (!flags.pkgconfig) (pkgs."jack" or (sysDepError "jack"));
        pkgconfig = (pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."jack" or (pkgConfDepError "jack"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "amplify" = {
          depends = [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "impulse-train" = {
          depends = [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "midimon" = {
          depends = [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }