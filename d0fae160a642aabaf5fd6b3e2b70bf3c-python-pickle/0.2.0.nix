{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "python-pickle";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "thu@hypered.be";
        author = "Vo Minh Thu";
        homepage = "";
        url = "";
        synopsis = "Serialization/deserialization using Python Pickle format.";
        description = "This package implements serialization and deserialization of Python objects\nusing the Pickle format.";
        buildType = "Simple";
      };
      components = {
        "python-pickle" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
        exes = {
          "pickle" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.python-pickle
            ];
          };
        };
      };
    }