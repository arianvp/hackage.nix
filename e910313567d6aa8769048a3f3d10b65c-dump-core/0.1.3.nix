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
        name = "dump-core";
        version = "0.1.3";
      };
      license = "ISC";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "A plug-in for rendering GHC core";
      description = "This is a GHC plugin that renders the Core generated by\nGHC into JSON and also HTML, for easy inspection.\nThe JSON is machine readable so it could be used by\nother tools, although at present the format is not\ndocumented and unstable.";
      buildType = "Simple";
    };
    components = {
      "dump-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.monadLib)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
    };
  }