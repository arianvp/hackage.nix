{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Unixutils";
          version = "1.17";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "http://src.seereason.com/haskell-unixutils";
        url = "";
        synopsis = "A crude interface between Haskell and Unix-like operating systems";
        description = "A collection of useful and mildly useful functions that you might\nexpect to find in System.* which a heavy bias towards Unix-type operating systems.";
        buildType = "Simple";
      };
      components = {
        "Unixutils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.regex-compat
            hsPkgs.process
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.old-time
            hsPkgs.parallel
          ];
        };
      };
    }