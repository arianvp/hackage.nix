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
      specVersion = "1.9.2";
      identifier = {
        name = "mcm";
        version = "0.6.4.10";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2013-2016 Anthony Doggett";
      maintainer = "Anthony Doggett <mcm@interfaces.org.uk>";
      author = "Anthony Doggett <mcm@interfaces.org.uk>";
      homepage = "http://interfaces.org.uk/mcm";
      url = "";
      synopsis = "Machine Configuration Manager";
      description = "Machine Configuration Manager (MCM) manages the contents of files and\ndirectories.  One or more of those files can be a script, enabling MCM to\ncontrol anything.  Typically MCM is used to manage the configurations of user\nprofiles, machines, systems and systems of systems.\n\n* The declarative language is simple and easy on the eye yet very powerful.\n\n* MCM is simple, fast and transparent.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "commands2html" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.polyparse)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "mcm" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hostname)
            (hsPkgs.polyparse)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.unix)
          ];
        };
        "mcm2html" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.polyparse)
            (hsPkgs.text)
          ];
        };
        "mcmtags" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.polyparse)
            (hsPkgs.text)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }