{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      overloaded-methods = true;
      overloaded-properties = true;
      overloaded-signals = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "gi-gtksource";
          version = "3.0.7";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GtkSource bindings";
        description = "Bindings for GtkSource, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        "gi-gtksource" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.gi-cairo
            hsPkgs.gi-pango
            hsPkgs.gi-gtk
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
          ];
          pkgconfig = [
            pkgconfPkgs."gtksourceview-3.0"
          ];
        };
      };
    }