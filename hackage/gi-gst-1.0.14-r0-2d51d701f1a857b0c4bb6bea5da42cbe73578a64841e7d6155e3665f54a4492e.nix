{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      enable-overloading = true;
    };
    package = {
      specVersion = "1.24";
      identifier = {
        name = "gi-gst";
        version = "1.0.14";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GStreamer bindings";
      description = "Bindings for GStreamer, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
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
          (pkgconfPkgs.gstreamer-1.0)
        ];
      };
    };
  }