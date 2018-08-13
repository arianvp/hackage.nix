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
        name = "quickcheck-poly";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "";
      url = "";
      synopsis = "Automating QuickCheck for polymorphic and overlaoded properties";
      description = "Automating QuickCheck for polymorphic and overlaoded properties  in a small world of types";
      buildType = "Simple";
    };
    components = {
      "quickcheck-poly" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.QuickCheck)
          (hsPkgs.hint)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-compat)
          (hsPkgs.MonadCatchIO-mtl)
        ];
      };
    };
  }