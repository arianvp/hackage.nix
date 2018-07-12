{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "qr-imager";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/QR-writer";
        url = "";
        synopsis = "Library to generate QR codes from bytestrings and objects";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "qr-imager" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.JuicyPixels
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.microlens
            hsPkgs.cryptonite
            hsPkgs.jose-jwt
            hsPkgs.directory
            hsPkgs.haskell-qrencode
            hsPkgs.process
            hsPkgs.MissingH
            hsPkgs.optparse-applicative
          ];
          pkgconfig = [
            pkgconfPkgs.libqrencode
          ];
        };
        tests = {
          "test-lib" = {
            depends  = [
              hsPkgs.base
              hsPkgs.qr-imager
              hsPkgs.hspec
            ];
          };
        };
      };
    }