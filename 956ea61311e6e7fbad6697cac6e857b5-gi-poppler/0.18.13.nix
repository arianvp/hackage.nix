{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      enable-overloading = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.24";
      identifier = {
        name = "gi-poppler";
        version = "0.18.13";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Poppler bindings";
      description = "Bindings for Poppler, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "gi-poppler" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-cairo)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (_flags.enable-overloading) (hsPkgs.haskell-gi-overloading);
        pkgconfig = [
          (pkgconfPkgs.poppler-glib)
        ];
      };
    };
  }