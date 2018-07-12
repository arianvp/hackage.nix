{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rasa-ext-cmd";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2016 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/rasa/";
        url = "";
        synopsis = "Rasa Ext for running commands";
        description = "Rasa Ext for running commands";
        buildType = "Simple";
      };
      components = {
        "rasa-ext-cmd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.rasa
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.containers
          ];
        };
      };
    }