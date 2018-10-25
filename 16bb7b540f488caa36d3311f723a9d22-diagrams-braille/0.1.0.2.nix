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
        name = "diagrams-braille";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/diagrams-braille#readme";
      url = "";
      synopsis = "Braille diagrams with plain text";
      description = "Please see the README at <https://github.com/mlang/diagrams-braille#readme>";
      buildType = "Simple";
    };
    components = {
      "diagrams-braille" = {
        depends  = [
          (hsPkgs.JuicyPixels)
          (hsPkgs.Rasterific)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-rasterific)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.time)
        ];
      };
      exes = {
        "brldia" = {
          depends  = [
            (hsPkgs.JuicyPixels)
            (hsPkgs.Rasterific)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.diagrams-braille)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.time)
          ];
        };
      };
    };
  }