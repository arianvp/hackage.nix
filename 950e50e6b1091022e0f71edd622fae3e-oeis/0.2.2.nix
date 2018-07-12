{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "oeis";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brent Yorgey <byorgey@gmail.com>";
        author = "Brent Yorgey";
        homepage = "http://code.haskell.org/oeis";
        url = "";
        synopsis = "Interface to the Online Encyclopedia of Integer Sequences";
        description = "Haskell interface to the Online Encyclopedia of Integer Sequences.";
        buildType = "Simple";
      };
      components = {
        "oeis" = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.HTTP
          ];
        };
      };
    }