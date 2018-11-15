{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gi-gtk";
        version = "0.3.16.12";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Gtk bindings";
      description = "Bindings for Gtk, autogenerated by haskell-gi.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-atk)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-gdk)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-cairo)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtk+-3.0)
        ];
      };
    };
  }