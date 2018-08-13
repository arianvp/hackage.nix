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
        name = "gi-girepository";
        version = "1.0.14";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "GIRepository (gobject-introspection) bindings";
      description = "Bindings for GIRepository, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "gi-girepository" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-gobject)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ [
          (hsPkgs.haskell-gi-overloading)
        ];
        pkgconfig = [
          (pkgconfPkgs.gobject-introspection-1.0)
        ];
      };
    };
  }