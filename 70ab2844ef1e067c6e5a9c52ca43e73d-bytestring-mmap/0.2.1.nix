{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring-mmap";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Don Stewart <dons@galois.com>";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/bytestring-mmap/";
        url = "";
        synopsis = "mmap support for strict ByteStrings";
        description = "\nThis library provides a wrapper to mmap(2), allowing files or\ndevices to be lazily loaded into memory as strict or lazy\nByteStrings, using the virtual memory subsystem to do on-demand\nloading.\n";
        buildType = "Simple";
      };
      components = {
        "bytestring-mmap" = {
          depends  = [
            hsPkgs.unix
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
      };
    }