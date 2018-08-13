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
        name = "dbus-client";
        version = "0.3.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/dbus/";
      url = "";
      synopsis = "D-Bus client libraries";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dbus-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dbus-core)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
    };
  }