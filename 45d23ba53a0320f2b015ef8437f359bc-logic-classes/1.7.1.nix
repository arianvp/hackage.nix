{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      local-atp-haskell = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9";
        identifier = {
          name = "logic-classes";
          version = "1.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "SeeReason Partners <partners@seereason.com>";
        author = "David Fox <dsf@seereason.com>";
        homepage = "https://github.com/seereason/logic-classes";
        url = "";
        synopsis = "Framework for propositional and first order logic, theorem proving";
        description = "Package to support Propositional and First Order Logic.  It includes classes\nrepresenting the different types of formulas and terms, some instances of\nthose classes for types used in other logic libraries, and implementations of\nseveral logic algorithms, including conversion to normal form and a simple\nresolution-based theorem prover for any instance of FirstOrderFormula.";
        buildType = "Simple";
      };
      components = {
        "logic-classes" = {
          depends  = [
            hsPkgs.applicative-extras
            hsPkgs.atp-haskell
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.HUnit
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.PropLogic
            hsPkgs.safe
            hsPkgs.safecopy
            hsPkgs.set-extra
            hsPkgs.syb
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "logic-classes-tests" = {
            depends  = [
              hsPkgs.applicative-extras
              hsPkgs.atp-haskell
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.logic-classes
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.PropLogic
              hsPkgs.safe
              hsPkgs.set-extra
              hsPkgs.syb
            ];
          };
        };
      };
    }