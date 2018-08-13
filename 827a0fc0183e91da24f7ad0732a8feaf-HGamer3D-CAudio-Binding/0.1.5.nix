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
      specVersion = "1.2";
      identifier = {
        name = "HGamer3D-CAudio-Binding";
        version = "0.1.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@googlemail.com";
      author = "Peter Althainz";
      homepage = "http://www.althainz.de/HGamer3D.html";
      url = "";
      synopsis = "Library to enable 3D game development for Haskell - cAudio Bindings";
      description = "Library, to enable 3D game development for Haskell,\nbased on bindings to 3D Graphics, Audio and GUI libraries.\nTHIS MODULE: cAudio Bindings\nList of features and modules:\nData Module (Basic Data Types),\nOGRE Binding (3D Graphics Engine),\nOIS Binding (Input System),\ncAudio Binding (Audio),\nCEGUI Binding (GUI System),\nAPIs (Haskell style APIs, different ways, to approach API)\nPlatform: Windows only\nLicense: Apache License, Version 2.0\nInstall: see http://www.althainz.de/HGamer3D/Download-and-Installation.html";
      buildType = "Simple";
    };
    components = {
      "HGamer3D-CAudio-Binding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HGamer3D-Data)
          (hsPkgs.haskell98)
        ];
        libs = [
          (pkgs.HGamer3DCAudio015)
        ];
      };
    };
  }