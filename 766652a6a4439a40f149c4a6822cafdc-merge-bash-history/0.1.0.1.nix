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
        name = "merge-bash-history";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Jiri Marsicek";
      maintainer = "jiri.marsicek@gmail.com";
      author = "Jiri Marsicek";
      homepage = "http://github.com/j1r1k/merge-bash-history#readme";
      url = "";
      synopsis = "command line utility to merge bash_history";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "merge-bash-history" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.data-ordlist)
          (hsPkgs.errors)
          (hsPkgs.text)
        ];
      };
      exes = {
        "merge-bash-history" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.merge-bash-history)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "MergeBashHistory-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.merge-bash-history)
          ];
        };
      };
    };
  }