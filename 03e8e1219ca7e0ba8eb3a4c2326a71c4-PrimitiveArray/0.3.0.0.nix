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
      specVersion = "1.6";
      identifier = {
        name = "PrimitiveArray";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2010-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Efficient multidimensional arrays";
      description = "This library provides efficient multidimensional arrays.\n\nIn general all operations are (highly) unsafe, no\nbounds-checking or other sanity-checking is performed.\nOperations are aimed toward efficiency as much as possible.\nGoals of the library are to have arrays according to three\nideas: immutable/mutable arrays, strict/lazy arrays,\nzero-based/lower-bound arrays. Zero-based arrays save one\naddition on each access if the lower bound or the array is\nalways zero.\n\nWe have forked two repa modules: Shape and Index.\n\nUnboxed vectors are available with implementations based on\n\"primitive\" and \"vector\". The \"primitive\" version is probably\nobsolete now, as I don't see any slowdowns anymore. If this\ncontinues into GHC 7.6.1, I'll remove the old code (This will\nprobably not break user code using Unboxed.Zero).";
      buildType = "Simple";
    };
    components = {
      "PrimitiveArray" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
      };
    };
  }