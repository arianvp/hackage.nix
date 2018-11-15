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
      specVersion = "1.10";
      identifier = {
        name = "yesod-routes-flow";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@frontrowed.com>";
      author = "Max Cantor, Felipe Lessa";
      homepage = "https://github.com/frontrowed/yesod-routes-flow";
      url = "";
      synopsis = "Generate Flow routes for Yesod";
      description = "Parse the Yesod routes data structure and generate routes that can be used with Flow.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.system-fileio)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
        ];
      };
    };
  }