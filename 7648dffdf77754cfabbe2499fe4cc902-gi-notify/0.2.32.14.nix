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
      specVersion = "1.10";
      identifier = {
        name = "gi-notify";
        version = "0.2.32.14";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Notify bindings";
      description = "Bindings for Notify, autogenerated by haskell-gi.";
      buildType = "Simple";
    };
    components = {
      "gi-notify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        pkgconfig = [
          (pkgconfPkgs.gdk-pixbuf-2.0)
        ];
      };
    };
  }