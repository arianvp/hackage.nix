{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "waitfree";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "yhirai@pira.jp";
        author = "Yoichi Hirai";
        homepage = "";
        url = "";
        synopsis = "A wrapping library for waitfree computation.";
        description = "A combinator library for asynchronous waitfree computation among forkIO threads.";
        buildType = "Simple";
      };
      components = {
        "waitfree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }