{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "openid";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008. Trevor Elliott <trevor@geekgateway.com>";
        maintainer = "trevor@geekgateway.com";
        author = "Trevor Elliott";
        homepage = "";
        url = "";
        synopsis = "An implementation of the OpenID-2.0 spec.";
        description = "An implementation of the OpenID-2.0 spec.";
        buildType = "Simple";
      };
      components = {
        "openid" = {
          depends  = [
            hsPkgs.HTTP
            hsPkgs.monadLib
            hsPkgs.nano-hmac
            hsPkgs.network
            hsPkgs.time
            hsPkgs.xml
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
          libs = [ pkgs.crypto pkgs.ssl ];
        };
      };
    }