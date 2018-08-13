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
        name = "hipe";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "f.staals@uu.nl";
      author = "Frank Staals";
      homepage = "";
      url = "";
      synopsis = "Support for reading and writing ipe7 files (http://ipe7.sourceforge.net)";
      description = "A package to support reading and writing ipe7 files. It has support for converting from and to several geometry types like Points, (Poly)Lines, Polygons etc.";
      buildType = "Simple";
    };
    components = {
      "hipe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hxt)
          (hsPkgs.hgeometry)
          (hsPkgs.parsec)
          (hsPkgs.split)
          (hsPkgs.text-format)
          (hsPkgs.text)
        ];
      };
    };
  }