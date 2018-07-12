{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Stream";
          version = "0.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
        author = "Wouter Swierstra";
        homepage = "http://www.cs.nott.ac.uk/~wss/repos/Stream/dist/doc/html/";
        url = "";
        synopsis = "A library for manipulating infinite lists.";
        description = "This package implements functions, analogous\nto those from Data.List, to create and manipulate infinite lists.";
        buildType = "Simple";
      };
      components = {
        "Stream" = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
          ];
        };
      };
    }