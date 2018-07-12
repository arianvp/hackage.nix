{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-keymap-vim";
          version = "0.13.0.2";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Yi developers <yi-devel@googlegroups.com>";
        author = "";
        homepage = "https://github.com/yi-editor/yi#readme";
        url = "";
        synopsis = "Vim keymap for Yi editor";
        description = "";
        buildType = "Simple";
      };
      components = {
        "yi-keymap-vim" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.Hclip
            hsPkgs.microlens-platform
            hsPkgs.mtl
            hsPkgs.oo-prototypes
            hsPkgs.pointedlist
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.yi-core
            hsPkgs.yi-language
            hsPkgs.yi-rope
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.Hclip
              hsPkgs.microlens-platform
              hsPkgs.mtl
              hsPkgs.oo-prototypes
              hsPkgs.pointedlist
              hsPkgs.safe
              hsPkgs.semigroups
              hsPkgs.text
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.yi-core
              hsPkgs.yi-language
              hsPkgs.yi-rope
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.QuickCheck
              hsPkgs.tasty-quickcheck
              hsPkgs.yi-core
              hsPkgs.yi-keymap-vim
            ];
          };
        };
      };
    }