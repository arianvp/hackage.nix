{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gtk";
          version = "3.0.22";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "Gtk bindings";
        description = "Bindings for Gtk, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        "gi-gtk" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.haskell-gi-overloading
            hsPkgs.gi-cairo
            hsPkgs.gi-pango
            hsPkgs.gi-gio
            hsPkgs.gi-gdkpixbuf
            hsPkgs.gi-gdk
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.gi-atk
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.haskell-gi-overloading;
          pkgconfig = [
            pkgconfPkgs."gtk+-3.0"
          ];
        };
      };
    }