{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "microlens-platform";
        version = "0.3.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Edward Kmett, Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "Feature-complete microlens";
      description = "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @Lens.Micro.Platform@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @Vector@, @Text@, and @HashMap@.\n\nThe minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.";
      buildType = "Simple";
    };
    components = {
      "microlens-platform" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.microlens)
          (hsPkgs.microlens-ghc)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
    };
  }