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
      identifier = { name = "sparse-tensor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Tobias Reinhart and Nils Alex";
      maintainer = "tobi.reinhart@fau.de, nils.alex@fau.de";
      author = "Tobias Reinhart and Nils Alex";
      homepage = "https://github.com/TobiReinhart/sparse-tensor#readme";
      url = "";
      synopsis = "typesafe tensor algebra library";
      description = "\nThis package is intended to be used as a general purpose tensor algebra library.\nIt defines the usual tensor algebra functions such as addition, scalar multiplication, tensor product, and contractions,\nbut also general symmetrizations and further utility functions.\n\nThe implemented tensor data type is capable of being used with an arbitrary number of general abstract indices and can incorporate values\nof any type that allow for a meaningful addition, scaling, and multiplication. The package is thus very flexible and can easily be customised\nat wish.\n\nThis package performs best when the values a given tensor provides are explicitly needed. In particular all incorporated functions are\nimplemented such that they explicitly manipulate the values of the given tensors. This allows for fast evaluation of the individual values from given tensors.\n\nIn order to improve memory usage, the tensors in this package employ a sparse storage paradigm. In other words, one may define a tensor by only\nproviding its non-zero values explicitly. All remaining values are taken to be zero.\n\nFurthermore this package also provides the functionality of fully automatically computing all linear independent expressions with given rank and symmetries\nthat can be composed by using the Minkowski metric and the totally antisymmetric tensor. In order words, the package includes functions that\nconstruct a basis of the space of Lorentz invariant tensors of given symmetry and rank. With slight modifications the therefore implemented algorithms can\nalso be used for the computation of invariant tensor bases of any other special orthogonal group @SO(p,q)@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."tf-random" or (buildDepError "tf-random"))
          (hsPkgs."ghc-typelits-natnormalise" or (buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-knownnat" or (buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."eigen" or (buildDepError "eigen"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."ad" or (buildDepError "ad"))
          ];
        buildable = true;
        };
      };
    }