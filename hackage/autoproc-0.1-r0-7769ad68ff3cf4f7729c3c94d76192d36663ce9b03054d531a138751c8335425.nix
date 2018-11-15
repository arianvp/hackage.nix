{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "autoproc";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jason Dagit <dagit@codersbase.com>";
      author = "Jason Dagit";
      homepage = "http://projects.codersbase.com/repos/autoproc";
      url = "";
      synopsis = "EDSL for Procmail scripts";
      description = "Autoproc is a utility which allows you to write an email filterer in an Haskell\nEDSL (embedded domain specific language); autoproc will then compile\nit down to a Procmail configuration file (.procmailrc). This file can\nthen be used with Procmail to sort and filter your email before\nyou see it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.directory)
          (hsPkgs.process)
        ];
      };
      exes = { "autoproc" = {}; };
    };
  }