{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "haskell-gi-base";
        version = "0.15";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson,\nIñaki García Etxebarria,\nJonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi-base";
      url = "";
      synopsis = "Foundation for libraries generated by haskell-gi";
      description = "Foundation for libraries generated by haskell-gi";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.transformers);
        pkgconfig = [
          (pkgconfPkgs.gobject-2.0)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }