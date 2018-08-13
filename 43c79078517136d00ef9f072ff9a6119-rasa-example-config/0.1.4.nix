{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rasa-example-config";
        version = "0.1.4";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Example user config for Rasa";
      description = "Example user config for Rasa";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rasa" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rasa)
            (hsPkgs.rasa-ext-views)
            (hsPkgs.rasa-ext-vim)
            (hsPkgs.rasa-ext-cursors)
            (hsPkgs.rasa-ext-logger)
            (hsPkgs.rasa-ext-files)
            (hsPkgs.rasa-ext-slate)
            (hsPkgs.lens)
            (hsPkgs.data-default)
            (hsPkgs.yi-rope)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }