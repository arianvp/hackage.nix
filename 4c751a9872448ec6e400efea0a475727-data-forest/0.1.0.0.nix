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
        name = "data-forest";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/haskell-libraries";
      url = "";
      synopsis = "A simple multi-way tree data structure.";
      description = "In some contexts, /forests/ are more important than /trees/. The /forest/ library provides a @Tree@ type much like the one from the popular /containers/ library, but it also provides a @Forest@ type with its own @Functor@ and @Foldable@ instances.";
      buildType = "Simple";
    };
    components = {
      "data-forest" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.forest)
          ];
        };
      };
    };
  }