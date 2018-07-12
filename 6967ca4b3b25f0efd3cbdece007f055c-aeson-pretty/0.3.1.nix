{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lib-only = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson-pretty";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 Falko Peters";
        maintainer = "Falko Peters <falko.peters@gmail.com>";
        author = "Falko Peters <falko.peters@gmail.com>";
        homepage = "http://github.com/informatikr/aeson-pretty";
        url = "";
        synopsis = "JSON pretty-printing library and command-line tool.";
        description = "A JSON pretty-printing library compatible with aeson as well as\na command-line tool to improve readabilty of streams of JSON data.\n\nThe /library/ provides a single function \"encodePretty\". It is a drop-in\nreplacement for aeson's \"encode\" function, producing JSON-ByteStrings for\nhuman readers.\n\nThe /command-line tool/ reads JSON from stdin and writes prettified JSON\nto stdout. It also offers a complementary \"compact\"-mode, essentially the\nopposite of pretty-printing. If you specify @-flib-only@ like this\n\n> cabal install -flib-only aeson-pretty\n\nthe command-line tool will NOT be installed.";
        buildType = "Simple";
      };
      components = {
        "aeson-pretty" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.text
          ];
        };
        exes = {
          "aeson-pretty" = {
            depends  = pkgs.lib.optionals (!_flags.lib-only) [
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.text
            ];
          };
        };
      };
    }