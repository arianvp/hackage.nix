{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      overloaded-methods = true;
      overloaded-properties = true;
      overloaded-signals = true;
    };
    package = {
      specVersion = "1.22";
      identifier = {
        name = "gi-gstaudio";
        version = "1.0.8";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GStreamerAudio bindings";
      description = "Bindings for GStreamerAudio, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-gstbase)
          (hsPkgs.gi-gst)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        pkgconfig = [
          (pkgconfPkgs.gstreamer-audio-1.0)
        ];
      };
    };
  }