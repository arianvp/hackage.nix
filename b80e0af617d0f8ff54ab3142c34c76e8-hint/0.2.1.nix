{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hint";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jcpetruzza@gmail.com";
        author = "Daniel Gorin";
        homepage = "";
        url = "";
        synopsis = "Runtime Haskell interpreter (GHC API wrapper)";
        description = "This library defines an @Interpreter@ monad. It allows to load Haskell\nmodules, browse them, type-check and evaluate strings with Haskell\nexpressions and even coerce them into values. The library is\nthread-safe and type-safe (even the coertion of expressions to\nvalues).\nIt is, esentially, a huge subset of the GHC API wrapped in a simpler\nAPI. Works with GHC 6.6.x and 6.8.x. NOTE: Requires Cabal 1.2, currently\nwon't install with Cabal 1.3 and above.";
        buildType = "Custom";
      };
      components = {
        "hint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src
            hsPkgs.ghc
            hsPkgs.mtl
          ];
        };
      };
    }