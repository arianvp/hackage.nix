{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsemail-ns";
          version = "1.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jfredett@gmail.com";
        author = "Peter Simons <simons@cryp.to>, Joe Fredette <jfredett@gmail.com>";
        homepage = "https://github.com/phlummox/hsemail-ns/tree/hsemail-ns";
        url = "";
        synopsis = "Internet Message Parsers";
        description = "Nonstandard parsers for the syntax defined in RFC2822, forked from hsemail proper. Should not be used for parsing incoming emails, only emails stored on disk.";
        buildType = "Simple";
      };
      components = {
        "hsemail-ns" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.old-time
          ];
        };
      };
    }