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
        name = "dense-int-set";
        version = "0.1.5";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/dense-int-set";
      url = "";
      synopsis = "Dense int-set";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dense-int-set" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.cereal-vector)
          (hsPkgs.deferred-folds)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
        ];
      };
    };
  }