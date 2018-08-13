{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      inlining = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "microlens-th";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Artyom <yom@artyom.me>";
      author = "Artyom";
      homepage = "http://github.com/aelve/microlens";
      url = "";
      synopsis = "Automatic generation of record lenses for microlens";
      description = "This package lets you automatically generate lenses for data types; code was extracted from the lens package, and therefore generated lenses are fully compatible with ones generated by lens (and can be used both from lens and microlens).\n\nThis package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/aelve/microlens#readme on Github>.";
      buildType = "Simple";
    };
    components = {
      "microlens-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }