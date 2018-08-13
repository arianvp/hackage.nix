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
        name = "publicsuffixlistcreate";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/litherum/publicsuffixlist";
      url = "";
      synopsis = "Create the publicsuffixlist package";
      description = "Create the publicsuffixlist package. This is broken out into its own package so users of the publicsuffixlist package don't have to depend on ICU.";
      buildType = "Simple";
    };
    components = {
      "publicsuffixlistcreate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.idna)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.publicsuffixlist)
        ];
      };
    };
  }