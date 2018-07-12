{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tuple-generic";
          version = "0.3.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "yom@artyom.me";
        author = "Artyom";
        homepage = "";
        url = "";
        synopsis = "Generic operations on tuples";
        description = "Generic operations on tuples";
        buildType = "Simple";
      };
      components = {
        "tuple-generic" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }