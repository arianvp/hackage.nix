{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-break";
        version = "0.2.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2017 David McHealy";
      maintainer = "david.mchealy@gmail.com";
      author = "David McHealy";
      homepage = "https://github.com/mindreader/pipes-break";
      url = "";
      synopsis = "Pipes to group by any delimiter (such as lines with carriage returns)";
      description = "`pipes-break` contains utility functions for splitting bytestring or text with any delimiter you like.\n\nThese are utility functions that were omitted from pipes-bytestring, pipes-text.";
      buildType = "Simple";
    };
    components = {
      "pipes-break" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pipes)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-parse)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
      };
      tests = {
        "pipes-break-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes-break)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }