{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wx";
        version = "0.10.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "wxhaskell-users@lists.sourceforge.net";
      author = "Daan Leijen";
      homepage = "";
      url = "";
      synopsis = "wxHaskell";
      description = "wxHaskell is a portable and native GUI library for Haskell.  It is built on top of wxWidgets - a comprehensive C++ library that is portable across all major GUI platforms; including GTK, Windows, X11, and MacOS X.  At present, it works with wxWidgets 2.6 (and sadly, not with with wxWidgets 2.8)";
      buildType = "Simple";
    };
    components = {
      "wx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wxcore)
        ];
      };
    };
  }