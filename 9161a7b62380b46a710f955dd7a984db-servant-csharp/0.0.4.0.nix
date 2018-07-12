{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-csharp";
          version = "0.0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "cutsea110";
        homepage = "https://github.com/cutsea110/servant-csharp.git";
        url = "";
        synopsis = "Generate servant client library for C#";
        description = "Generate servant client library for C#";
        buildType = "Simple";
      };
      components = {
        "servant-csharp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.haskell-src-exts
            hsPkgs.heredocs
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }