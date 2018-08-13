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
        name = "schedevr";
        version = "0.1.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "";
      url = "";
      synopsis = "Marge schedules and show EVR";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "marge-schedule" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xturtle)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
          ];
        };
        "show-progress" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.xturtle)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.old-locale)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }