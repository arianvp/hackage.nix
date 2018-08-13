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
        name = "proc-net";
        version = "1.0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "procnet.hs@mcohrs.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "Parse /proc/net/{tcp,tcp6,udp,udp6}";
      description = "";
      buildType = "Simple";
    };
    components = {
      "proc-net" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.network)
          (hsPkgs.unix)
        ];
      };
    };
  }