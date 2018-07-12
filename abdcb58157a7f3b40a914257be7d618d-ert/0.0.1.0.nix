{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
      util = true;
      yaml = true;
      regex = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ert";
          version = "0.0.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "kayo@illumium.org";
        author = "K.";
        homepage = "";
        url = "";
        synopsis = "Easy Runtime Templates";
        description = "EJS-like template engine for Haskell.";
        buildType = "Simple";
      };
      components = {
        "ert" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.attoparsec-expr
          ] ++ pkgs.lib.optional _flags.regex hsPkgs.regex-compat;
        };
        exes = {
          "ert" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.ert
              hsPkgs.attoparsec
              hsPkgs.attoparsec-expr
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.unordered-containers
              hsPkgs.aeson
            ] ++ pkgs.lib.optional _flags.regex hsPkgs.regex-compat) ++ pkgs.lib.optional _flags.yaml hsPkgs.yaml;
          };
        };
      };
    }