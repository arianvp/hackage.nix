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
        name = "hidapi";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Patrick Chilton <chpatrick@gmail.com>";
      author = "Patrick Chilton <chpatrick@gmail.com>, Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/vahokif/haskell-hidapi";
      url = "";
      synopsis = "Haskell bindings to HIDAPI";
      description = "Haskell bindings to the HIDAPI library (<http://www.signal11.us/oss/hidapi/>).";
      buildType = "Simple";
    };
    components = {
      "hidapi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq-generics)
        ];
        libs = if system.isWindows
          then [
            (pkgs.hid)
            (pkgs.setupapi)
          ]
          else [ (pkgs.udev) ];
      };
    };
  }