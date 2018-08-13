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
        name = "project-template";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/haskell-ide";
      url = "";
      synopsis = "Specify Haskell project templates and generate files";
      description = "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>";
      buildType = "Simple";
    };
    components = {
      "project-template" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.base64-bytestring)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.conduit)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.project-template)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }