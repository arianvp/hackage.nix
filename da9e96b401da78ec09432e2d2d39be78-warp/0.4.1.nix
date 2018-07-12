{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-bytestring = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "warp";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Matt Brown";
        homepage = "http://github.com/snoyberg/warp";
        url = "";
        synopsis = "A fast, light-weight web server for WAI applications.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "warp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.wai
            hsPkgs.blaze-builder-enumerator
            hsPkgs.transformers
            hsPkgs.enumerator
            hsPkgs.blaze-builder
            hsPkgs.simple-sendfile
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.unix-compat
          ] ++ (if _flags.network-bytestring
            then [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]
            else [ hsPkgs.network ]);
        };
      };
    }