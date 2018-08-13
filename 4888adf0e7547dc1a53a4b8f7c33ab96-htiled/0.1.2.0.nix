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
      specVersion = "1.6";
      identifier = {
        name = "htiled";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cra+code@cra.no";
      author = "Christian Rødli Amble";
      homepage = "";
      url = "";
      synopsis = "Import from the Tiled map editor.";
      description = "Import maps from the .tmx map format generated by Tiled,\n<http://www.mapeditor.org>.";
      buildType = "Simple";
    };
    components = {
      "htiled" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.zlib)
          (hsPkgs.bytestring)
          (hsPkgs.hxt)
          (hsPkgs.base64-bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.split)
        ];
      };
    };
  }