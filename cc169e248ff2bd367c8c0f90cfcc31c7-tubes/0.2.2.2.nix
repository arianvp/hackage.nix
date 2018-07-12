{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tubes";
          version = "0.2.2.2";
        };
        license = "GPL-3.0-only";
        copyright = "2015";
        maintainer = "gatlin@niltag.net";
        author = "Gatlin C Johnson";
        homepage = "https://github.com/gatlin/tubes";
        url = "";
        synopsis = "Effectful, iteratee-inspired stream processing based on a\nfree monad.";
        description = "This package provides the @Tube@ monad transformer, allowing any monad\ncomputation to become a stream processing pipeline. A computation of type\n@Tube a b m r@ consumes values of type 'a' and produces values of type\n'b'.\n\n@Tube@s are coroutines which can suspend computation to yield an\nintermediate value or continue execution by requesting an upstream value.\n\nExamples and more information may be found at\n<https://github.com/gatlin/tubes>.\n\nIf I managed to upload another faulty package that does not build\ncorrectly, Hackage documentation is also available at\n<http://niltag.net/tubes>.";
        buildType = "Simple";
      };
      components = {
        "tubes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.free
            hsPkgs.mtl
            hsPkgs.comonad
          ];
        };
      };
    }