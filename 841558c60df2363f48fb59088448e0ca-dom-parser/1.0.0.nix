{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dom-parser";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "makeit@typeable.io";
        author = "Typeable.io contributors";
        homepage = "https://github.com/typeable/dom-parser";
        url = "";
        synopsis = "Simple monadic DOM parser";
        description = "";
        buildType = "Simple";
      };
      components = {
        "dom-parser" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.open-union
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.type-fun
            hsPkgs.xml-conduit
            hsPkgs.xml-lens
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.dom-parser
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.semigroups
              hsPkgs.shakespeare
              hsPkgs.text
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }