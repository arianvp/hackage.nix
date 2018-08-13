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
        name = "tamper";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "An HTML templating system similar to Blaze, implemented as a monad transformer of sorts";
      description = "";
      buildType = "Simple";
    };
    components = {
      "tamper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }