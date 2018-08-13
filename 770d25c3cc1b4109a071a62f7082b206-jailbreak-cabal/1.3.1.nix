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
        name = "jailbreak-cabal";
        version = "1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/jailbreak-cabal";
      url = "";
      synopsis = "Strip version restrictions from build dependencies in Cabal files.";
      description = "Strip version restrictions from build dependencies in Cabal files.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "jailbreak-cabal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }