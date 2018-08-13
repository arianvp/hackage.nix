{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hackage-sparks";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/hackage-sparks";
      url = "";
      synopsis = "Generate sparkline graphs of hackage statistics";
      description = "Generate sparkline graphs of hackage statistics";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackagesparks" = {
          depends  = [
            (hsPkgs.hsparklines)
            (hsPkgs.tagsoup)
            (hsPkgs.parsedate)
            (hsPkgs.filepath)
          ] ++ (if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.old-locale)
              (hsPkgs.old-time)
              (hsPkgs.directory)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }