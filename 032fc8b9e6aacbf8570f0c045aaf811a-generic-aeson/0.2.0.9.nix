{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "generic-aeson";
          version = "0.2.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@silk.co";
        author = "Silk";
        homepage = "";
        url = "";
        synopsis = "Derivation of Aeson instances using GHC generics.";
        description = "Derivation of Aeson instances using GHC generics.";
        buildType = "Simple";
      };
      components = {
        "generic-aeson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.generic-deriving
            hsPkgs.mtl
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
        };
      };
    }