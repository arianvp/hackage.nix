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
      specVersion = "1.6";
      identifier = {
        name = "RepLib";
        version = "0.5.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>\nChris Casinghino <ccasin@cis.upenn.edu>\nStephanie Weirich <sweirich@cis.upenn.edu>";
      author = "Stephanie Weirich";
      homepage = "http://code.google.com/p/replib/";
      url = "";
      synopsis = "Generic programming library with representation types";
      description = "Generic programming library providing structural\npolymorphism and other features.";
      buildType = "Simple";
    };
    components = {
      "RepLib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.type-equality)
          (hsPkgs.containers)
        ];
      };
    };
  }