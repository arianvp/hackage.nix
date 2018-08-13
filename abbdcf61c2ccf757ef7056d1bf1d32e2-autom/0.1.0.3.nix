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
        name = "autom";
        version = "0.1.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ch.howard@zoho.com";
      author = "Christopher Howard";
      homepage = "https://qlfiles.net/the-ql-files/next-nearest-neighbors-cellular-automata";
      url = "";
      synopsis = "Generates and displays patterns from next nearest neighbors cellular automata";
      description = "This library is essentially a reimplementation of the\npattern generation algorithm described in\nWentlian Li's 1998 article COMPLEX PATTERNS\nGENERATED BY NEXT NEAREST NEIGHBORDS CELLULAR\nAUTONOMA (Choas and Fractals: A Computer\nGraphical Journey). This algorithm allows one to\ngenerate an amazing pattern (sometimes with\nfractal characteristics) by simply specifying a\n32-bit integer. Please visit the project homepage\nfor more information along with example images.";
      buildType = "Simple";
    };
    components = {
      "autom" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.gloss)
          (hsPkgs.random)
          (hsPkgs.colour)
          (hsPkgs.ghc-prim)
          (hsPkgs.JuicyPixels)
        ];
      };
    };
  }