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
      specVersion = "1.2";
      identifier = { name = "applicative-numbers"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/applicative-numbers";
      url = "http://code.haskell.org/applicative-numbers";
      synopsis = "Applicative-based numeric instances";
      description = "Any applicative functor can be given numeric instances in a boilerplate way.\nThe /applicative-numbers/ package provides an include file that makes it a\nsnap to define these instances.\nSee \"Data.Numeric.Function\" for an example.\n\nProject wiki page: <http://haskell.org/haskellwiki/applicative-numbers>\n\nCopyright 2009 Conal Elliott; BSD3 license.\n\n\nInstances of @Num@ classes for applicative functors.  To be @#include@'d after\ndefining @APPLICATIVE@ as the applicative functor name and @CONSTRAINTS@ as a\nlist of constraints, which must carry its own trailing comma if non-empty.\nThe @APPLICATIVE@ symbol gets @#undef@'d at the end of the include file, so\nthat multiple includes are convenient.\n\nFor instance,\n\n@\n#define INSTANCE_Ord\n#define INSTANCE_Enum\n\n#define APPLICATIVE Vec2\n#include \\\"ApplicativeNumeric-inc.hs\\\"\n\n#define APPLICATIVE Vec3\n#include \\\"ApplicativeNumeric-inc.hs\\\"\n\n#define APPLICATIVE Vec4\n#include \\\"ApplicativeNumeric-inc.hs\\\"\n@\n\nYou'll also have to import 'pure' and 'liftA2' from \"Control.Applicative\"\nand specify @the FlexibleContexts@ language extension (due to an implementation hack).\n\nSome instances are generated only if a corresponding CPP symbol is\ndefined: @INSTANCE_Eq@, @INSTANCE_Ord@, @INSTANCE_Show@, @INSTANCE_Enum@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
          ];
        buildable = true;
        };
      };
    }