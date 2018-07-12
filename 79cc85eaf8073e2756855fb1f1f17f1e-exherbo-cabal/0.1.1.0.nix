{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exherbo-cabal";
          version = "0.1.1.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "virkony@gmail.com";
        author = "Mykola Orliuk";
        homepage = "";
        url = "";
        synopsis = "Exheres generator for cabal packages";
        description = "Generate package description from .cabal files in format\nof exheres-0 for Exherbo Linux.";
        buildType = "Simple";
      };
      components = {
        "exherbo-cabal" = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haddock-library
            hsPkgs.pretty
          ];
        };
        exes = {
          "exherbo-cabal" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.exherbo-cabal
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.pcre-light
            ];
          };
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }