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
        name = "autoexporter";
        version = "1.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/autoexporter#readme";
      url = "";
      synopsis = "Automatically re-export modules.";
      description = "Autoexporter automatically re-exports modules.";
      buildType = "Simple";
    };
    components = {
      "autoexporter" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "autoexporter" = {
          depends  = [
            (hsPkgs.autoexporter)
            (hsPkgs.base)
          ];
        };
      };
    };
  }