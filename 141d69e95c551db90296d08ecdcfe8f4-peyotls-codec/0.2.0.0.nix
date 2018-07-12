{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "peyotls-codec";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "https://github.com/YoshikuniJujo/peyotls/wiki";
        url = "";
        synopsis = "Codec parts of Pretty Easy YOshikuni-made TLS library";
        description = "";
        buildType = "Simple";
      };
      components = {
        "peyotls-codec" = {
          depends  = [
            hsPkgs.base
            hsPkgs.word24
            hsPkgs.bytestring
            hsPkgs.asn1-encoding
            hsPkgs.asn1-types
            hsPkgs.x509
            hsPkgs.x509-store
            hsPkgs.crypto-pubkey
            hsPkgs.crypto-pubkey-types
            hsPkgs.bytable
          ];
        };
      };
    }