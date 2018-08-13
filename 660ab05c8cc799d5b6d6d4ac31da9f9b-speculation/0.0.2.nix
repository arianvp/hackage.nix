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
      specVersion = "1.2";
      identifier = {
        name = "speculation";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/speculation";
      url = "";
      synopsis = "A framework for safe, programmable, speculative parallelism";
      description = "A framework for safe, programmable, speculative parallelism, loosely based on\n<http://research.microsoft.com/pubs/118795/pldi026-vaswani.pdf>\n\n@'spec' g f a@ evaluates @f g@ while forcing @a@, if @g == a@ then @f g@ is returned. Otherwise @f a@ is evaluated.\n\nFurthermore, if the argument has already been evaluated, we avoid sparking the parallel computation at all.\n\nIf a good guess at the value of @a@ is available, this is one way to induce parallelism in an otherwise sequential task.\n\nHowever, if the guess isn\\'t available more cheaply than the actual answer, then this saves no work and if the guess is\nwrong, you risk evaluating the function twice.\n\n> spec a f a = a `seq` f a\n\nThe best-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n> [-- spec g f a --]\n\nThe worst-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n>                  [---- f a ----]\n> [------- spec g f a -----------]\n\nCompared to the unspeculated timeline of\n\n> [---- a -----]\n>              [---- f a ----]\n\nChanges since 0.0.1\n\n* 'specFoldr1' bug fix\n\n* Added 'spec'' combinator\n\nChanges since 0.0.0\n\n* Added 'WithoutSpeculation' and 'WrappedFoldable'";
      buildType = "Simple";
    };
    components = {
      "speculation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
        ];
      };
    };
  }