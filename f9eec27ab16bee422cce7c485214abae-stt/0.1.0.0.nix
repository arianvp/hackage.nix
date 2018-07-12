{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stt";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mckean.kylej@gmail.com";
        author = "Kyle McKean";
        homepage = "";
        url = "";
        synopsis = "A monad transformer version of the ST monad";
        description = "A monad transformer version of the ST monad\nWarning! This monad transformer should not be used with monads that\ncan contain multiple answers, like the list monad. The reason is that\nthe state token will be duplicated across the different answers and this causes\nBad Things to happen (such as loss of referential transparency). Safe\nmonads include the monads State, Reader, Writer, Maybe and\ncombinations of their corresponding monad transformers.";
        buildType = "Simple";
      };
      components = {
        "stt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.primitive
          ];
        };
      };
    }