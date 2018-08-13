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
        name = "star";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/star#readme";
      url = "";
      synopsis = "*-semirings";
      description = "*-semirings and Kleene algebras, oh my!";
      buildType = "Simple";
    };
    components = {
      "star" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }