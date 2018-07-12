{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "X11-rm";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Troels Henriksen <athas@sigkill.dk>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A binding to the resource management functions missing from X11.";
        description = "The binding is a direct translation of the C binding; for\ndocumentation of these calls, refer to \"The Xlib Programming\nManual\", available online at <http://tronche.com/gui/x/xlib/>.";
        buildType = "Simple";
      };
      components = {
        "X11-rm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.X11
          ];
        };
      };
    }