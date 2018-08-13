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
        name = "iptables-helpers";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etarasov.ekb@gmail.com";
      author = "Evgeny Tarasov";
      homepage = "";
      url = "";
      synopsis = "Static checking of iptables rules";
      description = "";
      buildType = "Simple";
    };
    components = {
      "iptables-helpers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          (hsPkgs.containers)
        ];
      };
    };
  }