{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-ghc";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "microlens + all features depending on packages coming with GHC (array, bytestring, containers)";
        description = "Use this package instead of <http://hackage.haskell.org/package/microlens microlens> if you don't mind depending on all dependencies here – @Lens.Micro.GHC@ reexports everything from @Lens.Micro@ and additionally provides orphan instances of microlens classes for packages coming with GHC (<http://hackage.haskell.org/package/array array>, <http://hackage.haskell.org/package/bytestring bytestring>, <http://hackage.haskell.org/package/containers containers>).\n\nThe minor and major versions of microlens-ghc are incremented whenever the minor and major versions of microlens are incremented, so you can depend on the exact version of microlens-ghc without specifying the version of microlens you need.\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.";
        buildType = "Simple";
      };
      components = {
        "microlens-ghc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
      };
    }