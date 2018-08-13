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
        name = "gi-gtkosxapplication";
        version = "2.0.9";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GtkosxApplication bindings";
      description = "Bindings for GtkosxApplication, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "gi-gtkosxapplication" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.gi-gtk)
          (hsPkgs.gi-gdkpixbuf)
          (hsPkgs.gi-gobject)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        pkgconfig = [
          (pkgconfPkgs.gtk-mac-integration-gtk3)
        ];
      };
    };
  }