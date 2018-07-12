{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      patakdebugskovorodabardaq = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "log-warper";
          version = "0.2.1";
        };
        license = "GPL-3.0-only";
        copyright = "2016-2016 Serokell";
        maintainer = "Serokell <hi@serokell.io>";
        author = "Serokell team";
        homepage = "https://github.com/serokell/log-warper";
        url = "";
        synopsis = "Flexible, configurable, monadic and pretty logging";
        description = "This package contains nice wrapper around hslogger library.";
        buildType = "Simple";
      };
      components = {
        "log-warper" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.ansi-terminal
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.dlist
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.extra
            hsPkgs.filepath
            hsPkgs.formatting
            hsPkgs.hashable
            hsPkgs.hslogger
            hsPkgs.lens
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.safecopy
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.yaml
          ];
        };
        exes = {
          "play-log" = {
            depends  = [
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.hslogger
              hsPkgs.log-warper
              hsPkgs.text
            ];
          };
        };
      };
    }