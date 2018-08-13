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
      specVersion = "1.8";
      identifier = {
        name = "yarr";
        version = "1.4.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Roman Leventov";
      homepage = "";
      url = "";
      synopsis = "Yet another array library";
      description = "Yarr is a new blazing fast dataflow framework (array library),\nmainly intented to process @Storable@s (including all \\\"primitive\\\" numeric types)\nand @fixed-vector@s of them, for example coordinates,\ncolor components, complex numbers.\n\nYarr framework is inspired by @repa@ library and inherits its features,\nincluding shape-polymorphism and auto-parallelism.\nAdditionaly, the framework is polymorphic over type and arity\nof fixed-size vectors and supports neat flow operations over them.\nFor example, you can convert colored image to greyscale like this:\n\n> let greyImage = zipElems (\\r g b -> 0.21 * r + 0.71 * g + 0.07 * b) image\n\nIn some cases the library is considerably faster than @repa@.\nSee benchmark results: <https://github.com/leventov/yarr/blob/master/tests/bench-results.md>\n\nShortcoming by design: lack of pure indexing interface.\n\nTo start with, read documentation in the root module: \"Data.Yarr\".\n\n[@Yarr!@]";
      buildType = "Simple";
    };
    components = {
      "yarr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.deepseq)
          (hsPkgs.fixed-vector)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          (hsPkgs.missing-foreign)
        ];
      };
    };
  }