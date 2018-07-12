{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "animate";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "https://github.com/jxv/animate#readme";
        url = "";
        synopsis = "Animation for sprites";
        description = "Prototypical sprite animation with type-safety.";
        buildType = "Simple";
      };
      components = {
        "animate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          "animate-test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.animate
              hsPkgs.hspec
              hsPkgs.vector
            ];
          };
        };
      };
    }