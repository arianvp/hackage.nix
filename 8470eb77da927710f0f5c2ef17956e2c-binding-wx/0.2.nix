{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "binding-wx";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@accursoft.org";
        author = "Gideon Sireling";
        homepage = "https://bitbucket.org/accursoft/binding";
        url = "";
        synopsis = "binding-core wrapper for WxHaskell";
        description = "Bind mutable data and lists to WxHaskell widgets.\nExamples are provided by the included demo programs.";
        buildType = "Simple";
      };
      components = {
        "binding-wx" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wxcore
            hsPkgs.wx
            hsPkgs.binding-core
            hsPkgs.stm
          ];
        };
      };
    }