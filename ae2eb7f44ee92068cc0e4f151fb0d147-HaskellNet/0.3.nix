{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HaskellNet";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006 Jun Mukai";
        maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
        author = "Jun Mukai";
        homepage = "https://github.com/jtdaugherty/HaskellNet";
        url = "";
        synopsis = "Client support for POP3, SMTP, and IMAP";
        description = "This package provides client support for the POP3,\nSMTP, and IMAP protocols.  NOTE: this package will be\nsplit into smaller, protocol-specific packages in the\nfuture.";
        buildType = "Simple";
      };
      components = {
        "HaskellNet" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.pretty
            hsPkgs.array
            hsPkgs.Crypto
            hsPkgs.base64-string
            hsPkgs.old-time
            hsPkgs.mime-mail
            hsPkgs.text
          ];
        };
      };
    }