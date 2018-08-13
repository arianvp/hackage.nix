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
        name = "snap-app";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "Simple modules for writing apps with Snap, abstracted from hpaste.";
      url = "";
      synopsis = "Simple modules for writing apps with Snap, abstracted from hpaste.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "snap-app" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap-core)
          (hsPkgs.network)
          (hsPkgs.pgsql-simple)
          (hsPkgs.mtl)
          (hsPkgs.blaze-html)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.cgi)
          (hsPkgs.data-default)
        ];
      };
    };
  }