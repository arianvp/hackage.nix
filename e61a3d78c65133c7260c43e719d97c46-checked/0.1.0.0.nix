{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "checked";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Antoine Latter <aslatter@gmail.com>";
        author = "Antoine Latter";
        homepage = "";
        url = "";
        synopsis = "Bounds-checking integer types.";
        description = "Includes replacements for all of the 'Data.Int' and 'Data.Word' types.\nNo effort has been made towards performance.";
        buildType = "Simple";
      };
      components = {
        "checked" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }