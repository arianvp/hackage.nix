{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "temporal-media";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/temporal-media";
        url = "";
        synopsis = "data types for temporal media";
        description = "An embedded domain-specific language (EDSL) for\ncreating lists of constant time events related in time.";
        buildType = "Simple";
      };
      components = {
        "temporal-media" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.Boolean
          ];
        };
      };
    }