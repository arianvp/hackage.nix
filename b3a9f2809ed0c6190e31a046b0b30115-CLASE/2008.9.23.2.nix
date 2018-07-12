{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "CLASE";
          version = "2008.9.23.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "clase@zonetora.co.uk";
        author = "Tristan Allwood";
        homepage = "http://www.zonetora.co.uk/clase/";
        url = "";
        synopsis = "Cursor Library for A Structured Editor";
        description = "A library to aid the development of structured editors that\nrequire a zipper-like interface to the language being edited.";
        buildType = "Simple";
      };
      components = {
        "CLASE" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.filepath
            hsPkgs.mtl
          ];
        };
      };
    }