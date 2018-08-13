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
      specVersion = "1.2";
      identifier = {
        name = "wumpus-microprint";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Microprints - \"greek-text\" pictures.";
      description = "\nA library to produce /microprints/ [1] sometimes known as\n\\\"greek-text\\\".\n\nNote this library only provides the graphically half of the\nfunctionality needed to make microprints. There is no support\nfor tokenizing input files, and at the moment it is really\njust a test bed for Wumpus.\n\n\\[1\\] <http://scg.unibe.ch/archive/papers/Robb05b-microprintsESUG.pdf>\n\n";
      buildType = "Simple";
    };
    components = {
      "wumpus-microprint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
          (hsPkgs.monadLib)
          (hsPkgs.wumpus-core)
          (hsPkgs.wumpus-basic)
        ];
      };
    };
  }