{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mtl";
          version = "2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Edward Kmett <ekmett@gmail.com>";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Monad classes, using functional dependencies";
        description = "Monad classes using functional dependencies, with instances\nfor various monad transformers, inspired by the paper\n/Functional Programming with Overloading and Higher-Order Polymorphism/,\nby Mark P Jones, in /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).";
        buildType = "Simple";
      };
      components = {
        "mtl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }