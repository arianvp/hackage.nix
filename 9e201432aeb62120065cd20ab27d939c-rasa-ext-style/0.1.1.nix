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
        name = "rasa-ext-style";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext managing rendering styles";
      description = "Rasa Ext managing rendering styles";
      buildType = "Simple";
    };
    components = {
      "rasa-ext-style" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rasa)
          (hsPkgs.lens)
          (hsPkgs.data-default)
        ];
      };
    };
  }