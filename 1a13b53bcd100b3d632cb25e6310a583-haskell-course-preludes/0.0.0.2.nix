{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-course-preludes";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "";
        url = "";
        synopsis = "Small modules for a Haskell course in which Haskell is taught by implementing Prelude functionality.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "haskell-course-preludes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
      };
    }