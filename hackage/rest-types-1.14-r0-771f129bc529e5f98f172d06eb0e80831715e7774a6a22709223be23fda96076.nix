{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "rest-types";
        version = "1.14";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Silk Rest Framework Types";
      description = "Silk Rest Framework Types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.case-insensitive)
          (hsPkgs.generic-aeson)
          (hsPkgs.hxt)
          (hsPkgs.json-schema)
          (hsPkgs.mtl)
          (hsPkgs.generic-xmlpickler)
          (hsPkgs.rest-stringmap)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.uuid)
        ];
      };
    };
  }