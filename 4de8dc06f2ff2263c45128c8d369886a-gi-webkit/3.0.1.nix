{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-webkit";
          version = "3.0.1";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "WebKit bindings";
        description = "Bindings for WebKit, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        "gi-webkit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.gi-atk
            hsPkgs.gi-glib
            hsPkgs.gi-gobject
            hsPkgs.gi-gdk
            hsPkgs.gi-gdkpixbuf
            hsPkgs.gi-gio
            hsPkgs.gi-gtk
            hsPkgs.gi-javascriptcore
            hsPkgs.gi-soup
            hsPkgs.gi-cairo
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs."webkitgtk-3.0"
          ];
        };
      };
    }