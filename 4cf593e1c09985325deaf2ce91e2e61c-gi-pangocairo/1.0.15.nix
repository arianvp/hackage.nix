{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      enable-overloading = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.24";
      identifier = {
        name = "gi-pangocairo";
        version = "1.0.15";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "PangoCairo bindings";
      description = "Bindings for PangoCairo, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "gi-pangocairo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ [
          (hsPkgs.haskell-gi-overloading)
        ];
        pkgconfig = [
          (pkgconfPkgs.pangocairo)
        ];
      };
    };
  }