{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "longboi";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dcartwright@layer3com.com";
        author = "Daniel Cartwright";
        homepage = "https://github.com/chessai/longboi";
        url = "";
        synopsis = "Dependently-typed linked list implementation";
        description = "Length-indexed linked lists, a simple\nexercise in dependent types.";
        buildType = "Simple";
      };
      components = {
        "longboi" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }