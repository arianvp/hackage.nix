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
        name = "tai64";
        version = "0.2.0";
      };
      license = "MPL-2.0";
      copyright = "(c) 2015-2016 Kim Altintop";
      maintainer = "kim.altintop@gmail.com";
      author = "Kim Altintop";
      homepage = "https://github.com/kim/tai64";
      url = "";
      synopsis = "Tai64 Labels for Haskell";
      description = "Implementation of TAI64 labels as specified by <http://cr.yp.to/libtai/tai64.html>\n\nMainly useful for working with logfiles generated by \\\"multilog\\\" (part of\nthe <http://cr.yp.to/daemontools.html daemontools> suite) or \\\"svlogd\\\" (part\nof the <http://smarden.org/runit/ runit> suite).";
      buildType = "Simple";
    };
    components = {
      "tai64" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.base16-bytestring)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.tai64)
          ];
        };
      };
    };
  }