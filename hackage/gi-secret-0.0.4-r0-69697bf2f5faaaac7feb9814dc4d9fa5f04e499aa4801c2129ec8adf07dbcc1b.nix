{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      enable-overloading = true;
    };
    package = {
      specVersion = "1.24";
      identifier = {
        name = "gi-secret";
        version = "0.0.4";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Libsecret bindings";
      description = "Bindings for Libsecret, autogenerated by haskell-gi.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.haskell-gi)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-gobject)
          (hsPkgs.gi-glib)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ] ++ [
          (hsPkgs.haskell-gi-overloading)
        ];
        pkgconfig = [
          (pkgconfPkgs.libsecret-1)
        ];
      };
    };
  }