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
        name = "yampa-sdl2";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "2018 Simre";
      maintainer = "simre4775@gmail.com";
      author = "Simre";
      homepage = "https://github.com/Simre1/YampaSDL2#readme";
      url = "";
      synopsis = "Yampa and SDL2 made easy";
      description = "yampa-sdl2 lets you start coding your app right away instead of dealing with SDL2 first.";
      buildType = "Simple";
    };
    components = {
      "yampa-sdl2" = {
        depends  = [
          (hsPkgs.StateVar)
          (hsPkgs.Yampa)
          (hsPkgs.base)
          (hsPkgs.data-memocombinators)
          (hsPkgs.linear)
          (hsPkgs.sdl2)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "YampaSDL2-test" = {
          depends  = [
            (hsPkgs.StateVar)
            (hsPkgs.Yampa)
            (hsPkgs.base)
            (hsPkgs.data-memocombinators)
            (hsPkgs.linear)
            (hsPkgs.sdl2)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.yampa-sdl2)
          ];
        };
      };
    };
  }