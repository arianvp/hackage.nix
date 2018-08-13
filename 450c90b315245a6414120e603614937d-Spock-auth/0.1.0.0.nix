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
      specVersion = "1.8";
      identifier = {
        name = "Spock-auth";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "https://github.com/agrafix/Spock-auth";
      url = "";
      synopsis = "Provides authentification helpers for Spock";
      description = "";
      buildType = "Simple";
    };
    components = {
      "Spock-auth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Spock)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.time)
        ];
      };
    };
  }