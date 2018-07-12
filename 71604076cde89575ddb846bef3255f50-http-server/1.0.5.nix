{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "http-server";
          version = "1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Galois, Inc.";
        homepage = "https://github.com/GaloisInc/http-server";
        url = "";
        synopsis = "A library for writing Haskell web servers.";
        description = "A library for writing Haskell web servers.";
        buildType = "Simple";
      };
      components = {
        "http-server" = {
          depends  = ([
            hsPkgs.HTTP
            hsPkgs.base
            hsPkgs.mime
            hsPkgs.url
            hsPkgs.utf8-string
            hsPkgs.text
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [
              hsPkgs.network
            ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }