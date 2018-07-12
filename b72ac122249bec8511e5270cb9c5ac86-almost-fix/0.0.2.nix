{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "almost-fix";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Recurse while a predicate is satisfied";
        description = "";
        buildType = "Simple";
      };
      components = {
        "almost-fix" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }