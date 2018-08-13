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
        name = "yi-frontend-vty";
        version = "0.13.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Vty frontend for Yi editor";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yi-frontend-vty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.dlist)
          (hsPkgs.microlens-platform)
          (hsPkgs.pointedlist)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.vty)
          (hsPkgs.yi-core)
          (hsPkgs.yi-language)
        ];
      };
    };
  }