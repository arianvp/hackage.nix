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
        name = "irc-core";
        version = "2.0.0.0";
      };
      license = "ISC";
      copyright = "2016 Eric Mertens";
      maintainer = "emertens@gmail.com";
      author = "Eric Mertens";
      homepage = "https://github.com/glguy/irc-core";
      url = "";
      synopsis = "IRC core library for glirc";
      description = "IRC core library for glirc\n\nThe glirc client has been split off into <https://hackage.haskell.org/package/glirc glirc>";
      buildType = "Simple";
    };
    components = {
      "irc-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
    };
  }