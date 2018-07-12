{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "emacs-keys";
          version = "0.0.1.0";
        };
        license = "ISC";
        copyright = "";
        maintainer = "moritz.kiefer@purelyfunctional.org";
        author = "Moritz Kiefer";
        homepage = "https://github.com/cocreature/emacs-keys";
        url = "";
        synopsis = "library to parse emacs style keybinding into the modifiers and the chars";
        description = "Allows parsing emacs style keybindings like \"M-a\", \"C-M-a\" or\n\"M-Return\". For convenience a TH helper that turns parse\nerrors into compile errors is also provided.";
        buildType = "Simple";
      };
      components = {
        "emacs-keys" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.xkbcommon
            hsPkgs.th-lift
            hsPkgs.split
          ];
        };
        tests = {
          "tasty" = {
            depends  = [
              hsPkgs.emacs-keys
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-quickcheck
              hsPkgs.xkbcommon
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }