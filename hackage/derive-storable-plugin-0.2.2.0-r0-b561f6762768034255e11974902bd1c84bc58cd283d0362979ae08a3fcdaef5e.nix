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
      specVersion = "1.10";
      identifier = { name = "derive-storable-plugin"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kłoczko";
      homepage = "https://www.github.com/mkloczko/derive-storable-plugin/";
      url = "";
      synopsis = "GHC core plugin supporting the derive-storable package.";
      description = "The package helps derive-storable package in forcing compile time evaluation of\nsizes, alignments and offsets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghci" or (buildDepError "ghci"))
          (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
          ];
        buildable = true;
        };
      tests = {
        "ids-concrete" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghci" or (buildDepError "ghci"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-handwritten" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghci" or (buildDepError "ghci"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-newtype" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghci" or (buildDepError "ghci"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-parametrised-spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghci" or (buildDepError "ghci"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "ids-typesynonym" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghci" or (buildDepError "ghci"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (buildDepError "derive-storable-plugin"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "plugin-benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."derive-storable" or (buildDepError "derive-storable"))
            (hsPkgs."derive-storable-plugin" or (buildDepError "derive-storable-plugin"))
            ];
          buildable = true;
          };
        };
      };
    }