{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rest-types";
          version = "1.11";
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
        "rest-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.generic-aeson
            hsPkgs.hxt
            hsPkgs.json-schema
            hsPkgs.mtl
            hsPkgs.regular
            hsPkgs.regular-xmlpickler
            hsPkgs.rest-stringmap
            hsPkgs.text
            hsPkgs.uuid
          ];
        };
      };
    }