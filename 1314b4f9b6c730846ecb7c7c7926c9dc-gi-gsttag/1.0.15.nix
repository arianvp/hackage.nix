{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "gi-gsttag";
          version = "1.0.15";
        };
        license = "LGPL-2.1-only";
        copyright = "";
        maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
        author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "GStreamer Tag bindings";
        description = "Bindings for the GStreamer Tag library, autogenerated by haskell-gi.";
        buildType = "Custom";
      };
      components = {
        "gi-gsttag" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-gi-base
            hsPkgs.haskell-gi
            hsPkgs.haskell-gi-overloading
            hsPkgs.gi-gstbase
            hsPkgs.gi-gst
            hsPkgs.gi-gobject
            hsPkgs.gi-glib
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (compiler.isGhc && false) hsPkgs.haskell-gi-overloading;
          pkgconfig = [
            pkgconfPkgs."gstreamer-tag-1.0"
          ];
        };
      };
    }