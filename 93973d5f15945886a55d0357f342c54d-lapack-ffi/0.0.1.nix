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
      specVersion = "1.14";
      identifier = {
        name = "lapack-ffi";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/lapack-ffi/";
      url = "";
      synopsis = "Auto-generated interface to Fortran LAPACK";
      description = "LAPACK is a package for efficient numerically robust linear algebra.\nThe original implementation is written in FORTRAN.\n\nThis is an automatically generated low-level wrapper.\nWe provide bindings to functions of all variants\nfor @Float@, @Double@, @Complex Float@ and @Complex Double@.\nWe do not use TemplateHaskell nor HSC nor CHS,\nbut instead Haskell 98 code\ngenerated by the custom @lapack-ffi-tools@ package.";
      buildType = "Simple";
    };
    components = {
      "lapack-ffi" = {
        depends  = [
          (hsPkgs.netlib-ffi)
          (hsPkgs.base)
        ];
        pkgconfig = [
          (pkgconfPkgs.lapack)
        ];
      };
    };
  }