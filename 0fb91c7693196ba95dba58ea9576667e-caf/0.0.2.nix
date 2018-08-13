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
      specVersion = "1.2";
      identifier = {
        name = "caf";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Martina Willig <willig@ki.informatik.uni-frankfurt.de>";
      author = "Dr. David Sabel and Martina Willig";
      homepage = "http://sites.google.com/site/cafwiki/";
      url = "";
      synopsis = "A library of Concurrency Abstractions using Futures.";
      description = "This library contains implementations of several kinds of futures and concurrency abstractions.";
      buildType = "Simple";
    };
    components = {
      "caf" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }