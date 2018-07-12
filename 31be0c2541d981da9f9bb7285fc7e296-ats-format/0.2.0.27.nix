{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ats-format";
          version = "0.2.0.27";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017-2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "A source-code formatter for ATS";
        description = "An opinionated source-code formatter for [ATS](http://www.ats-lang.org/).";
        buildType = "Custom";
      };
      components = {
        exes = {
          "atsfmt" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-ats
              hsPkgs.optparse-applicative
              hsPkgs.htoml-megaparsec
              hsPkgs.text
              hsPkgs.ansi-wl-pprint
              hsPkgs.directory
              hsPkgs.unordered-containers
              hsPkgs.process
              hsPkgs.file-embed
            ];
          };
        };
      };
    }