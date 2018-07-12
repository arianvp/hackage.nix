{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "maid";
          version = "2009.12.20";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
        author = "Wang, Jinjing";
        homepage = "http://github.com/nfjinjing/maid/tree/master";
        url = "";
        synopsis = "A simple static web server";
        description = "Serve files from the current path";
        buildType = "Simple";
      };
      components = {
        exes = {
          "maid" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mps
              hsPkgs.loli
              hsPkgs.haskell98
              hsPkgs.hack-contrib
              hsPkgs.data-default
              hsPkgs.hack-handler-happstack
              hsPkgs.hack
            ];
          };
        };
      };
    }