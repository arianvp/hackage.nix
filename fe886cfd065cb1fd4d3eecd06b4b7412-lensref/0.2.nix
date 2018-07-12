{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "lensref";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "divipp@gmail.com";
        author = "Péter Diviánszky";
        homepage = "http://www.haskell.org/haskellwiki/LGtk";
        url = "";
        synopsis = "References which can be joined and on which lenses can be applied";
        description = "The lensref package provides and interface an two implementation\nfor references which can be joined and on which lenses can be applied.\n\n-The pure implementation is slow and has memory leaks but probably easier to follow.\nThis is the reference implementation, so if the the other implementation\ndiffers this has the right behaviour.\n\n-The fast implementation is intended for real usage.\n\nStatus:\n\n-The interface is getting stable. You can expect more functionality and minor changes on current functionality.\n\n-There are test cases for the first half of the interface.\nBoth implementations fulfil the test cases.\n\n-The pure implementation is ready.\n\n-The fast implementation is much faster than the pure implementation,\nbut it is far from being as fast as possible.\nProbably it also leaks memory.\n\nTo see what is possible to do with lens references, look at the test cases in \"Data.LensRef.Test\"\n\nFor more information visit the following links:\n\n-<http://www.haskell.org/haskellwiki/LGtk haskell.org wiki page>\n\n-<http://lgtk.wordpress.com/ Wordpress blog>\n\n-<https://github.com/divipp/lensref GitHub repository>\n\n-<http://hackage.haskell.org/package/lensref Haddock documentation (this page)>";
        buildType = "Simple";
      };
      components = {
        "lensref" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.monad-control
          ] ++ pkgs.lib.optionals _flags.tests [
            hsPkgs.operational
            hsPkgs.containers
            hsPkgs.lens
          ];
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lensref
            ];
          };
        };
      };
    }