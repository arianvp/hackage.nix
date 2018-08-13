{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      integer-simple = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "bytestring-show";
        version = "0.3.5.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dan Doel <dan.doel@gmail.com>";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/";
      url = "";
      synopsis = "Efficient conversion of values into readable byte strings.";
      description = "Efficient conversion of values into readable byte strings.";
      buildType = "Simple";
    };
    components = {
      "bytestring-show" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (_flags.integer-simple) (hsPkgs.integer-simple)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11" && !_flags.integer-simple) (hsPkgs.integer-gmp)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11") && !_flags.integer-simple) (hsPkgs.integer);
      };
    };
  }