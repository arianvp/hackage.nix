{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-frontend-pango";
          version = "0.14.0";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Pango frontend for Yi editor";
        description = "";
        buildType = "Simple";
      };
      components = {
        "yi-frontend-pango" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.microlens-platform
            hsPkgs.mtl
            hsPkgs.oo-prototypes
            hsPkgs.pango
            hsPkgs.pointedlist
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.yi-core
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
        };
      };
    }