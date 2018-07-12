{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "monadcryptorandom";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
        homepage = "https://github.com/TomMD/monadcryptorandom";
        url = "";
        synopsis = "A monad for using CryptoRandomGen";
        description = "A monad for using CryptoRandomGen";
        buildType = "Simple";
      };
      components = {
        "monadcryptorandom" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.crypto-api
            hsPkgs.transformers
            hsPkgs.tagged
          ];
        };
      };
    }