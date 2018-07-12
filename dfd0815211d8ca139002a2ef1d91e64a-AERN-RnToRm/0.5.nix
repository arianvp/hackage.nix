{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "AERN-RnToRm";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2009 Michal Konecny, Jan Duracz";
        maintainer = "mikkonecny@gmail.com";
        author = "Michal Konecny (Aston University)";
        homepage = "http://www-users.aston.ac.uk/~konecnym/DISCERN";
        url = "";
        synopsis = "polynomial function enclosures (PFEs) approximating exact real functions";
        description = "AERN-RnToRm provides\ndatatypes and abstractions for approximating functions\nof type @D -> R^m@ where @D@ is a bounded interval in @R^n@\nwith non-empty interior.\n\nThe main datatype are function enclosures whose boundaries are\npiece-wise polynomial with a bounded degree.  (This degree can\nbe set arbitrarily high or as low as 0.)\nThis datatype is supported by safely rounding operations\nwhose precision can be increased arbitrarily, so that they\nall converge to the exact operations.\nField operations, integration, maximisation and some elementary operations\n(namely exp, sin, cos) are among those already implemented.\n\nFor an architectural overview, see module \"Data.Number.ER.RnToRm\".\n\nA mathematical description of the very basics as well as a brief comparison\nwith Taylor Models is included in the\npaper <http://www-users.aston.ac.uk/~konecnym/papers/cfv08.html>.\n\nSimple examples of usage can be found in folder @demos@\nand a test suite can be run via the module in the folder @tests@.";
        buildType = "Simple";
      };
      components = {
        "AERN-RnToRm" = {
          depends  = [
            hsPkgs.AERN-Real
            hsPkgs.AERN-Real
            hsPkgs.base
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.html
            hsPkgs.QuickCheck
            hsPkgs.QuickCheck
            hsPkgs.time
            hsPkgs.filepath
            hsPkgs.directory
          ];
        };
      };
    }