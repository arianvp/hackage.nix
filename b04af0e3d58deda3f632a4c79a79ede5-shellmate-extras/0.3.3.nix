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
        name = "shellmate-extras";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/shellmate";
      url = "";
      synopsis = "Extra functionality for shellmate.";
      description = "HTTP downloads and parsing for various file formats.";
      buildType = "Simple";
    };
    components = {
      "shellmate-extras" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
          (hsPkgs.network-uri)
          (hsPkgs.feed)
          (hsPkgs.tagsoup)
          (hsPkgs.xml)
          (hsPkgs.text)
          (hsPkgs.mime-types)
          (hsPkgs.shellmate)
        ];
      };
    };
  }