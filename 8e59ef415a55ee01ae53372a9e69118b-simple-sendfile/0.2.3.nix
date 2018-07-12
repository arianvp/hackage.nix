{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "simple-sendfile";
          version = "0.2.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Cross platform library for the sendfile system call";
        description = "Cross platform library for the sendfile system call.\nThis library tries to call minimum system calls which\nare the bottleneck of web servers.";
        buildType = "Simple";
      };
      components = {
        "simple-sendfile" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ] ++ (if system.isFreebsd
            then [ hsPkgs.unix ]
            else if system.isOsx
              then [ hsPkgs.unix ]
              else if system.isLinux
                then [ hsPkgs.unix ]
                else [
                  hsPkgs.bytestring
                  hsPkgs.conduit
                  hsPkgs.transformers
                ]);
        };
      };
    }