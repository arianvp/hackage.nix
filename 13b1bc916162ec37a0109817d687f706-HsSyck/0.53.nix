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
        name = "HsSyck";
        version = "0.53";
      };
      license = "MIT";
      copyright = "Audrey Tang, Gaal Yahas, Oliver Charles, 2005, 2006, 2007, 2008, 2009, 2013, 2014, 2015";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Fast, lightweight YAML loader and dumper";
      description = "This is a simple YAML ('Yet Another Markup Language') processor,\nused by the Pugs project for handling data serialization; this can be\nuseful for optimization and caching purposes.\n\nThis is an interface to the @syck@ C library for parsing and\ndumping YAML data. It lets you transform textual YAML data into an\nobject of type 'YamlNode', and vice versa, fast.";
      buildType = "Simple";
    };
    components = {
      "HsSyck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.syb)
          (hsPkgs.utf8-string)
          (hsPkgs.hashtables)
        ];
      };
    };
  }