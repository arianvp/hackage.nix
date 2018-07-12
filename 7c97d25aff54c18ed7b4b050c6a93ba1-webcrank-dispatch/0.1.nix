{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "webcrank-dispatch";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Richard Wallace";
        maintainer = "Richard Wallace <rwallace@thewallacepack.net>";
        author = "Richard Wallace <rwallace@thewallacepack.net>";
        homepage = "https://github.com/webcrank/webcrank-dispatch.hs";
        url = "";
        synopsis = "A simple request dispatcher.";
        description = "A simple request dispatcher.";
        buildType = "Simple";
      };
      components = {
        "webcrank-dispatch" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.path-pieces
            hsPkgs.reroute
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
      };
    }