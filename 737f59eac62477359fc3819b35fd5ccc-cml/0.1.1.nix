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
      specVersion = "0";
      identifier = {
        name = "cml";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben.franksen@online.de";
      author = "Avik Chaudhuri";
      homepage = "";
      url = "";
      synopsis = "Events and Channels as in Concurrent ML";
      description = "Implementation of Events and Channels as in CML\n(extended with communication guards).\nSee /A Concurrent ML Library in Concurrent Haskell/ by Avik Chaudhuri\n(avik\\@cs.umd.edu) for details. The original code as well as the papers can\nbe found at <http://www.cs.umd.edu/~avik/projects/cmllch/>.";
      buildType = "Simple";
    };
    components = {
      "cml" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }