{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      overloaded-methods = true;
      overloaded-properties = true;
      overloaded-signals = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.24";
      identifier = {
        name = "gi-gdk";
        version = "3.0.10";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Gdk bindings";
      description = "Bindings for Gdk, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "gi-gdk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-pango)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        pkgconfig = [
          (pkgconfPkgs.gdk-3.0)
        ];
      };
    };
  }