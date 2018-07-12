{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "functors";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Aristid Breitkreuz";
        maintainer = "aristidb@googlemail.com";
        author = "Aristid Breitkreuz";
        homepage = "https://github.com/aristidb/functors";
        url = "";
        synopsis = "(.:) and friends, syntax for Functor and Applicative.";
        description = "Alternative syntax for Functor and Applicative. Includes\n\"Caleskell\" idioms like (.) = fmap, and also extensions\nlike (.:) = fmap . fmap and (&) = (<*>).";
        buildType = "Simple";
      };
      components = {
        "functors" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }