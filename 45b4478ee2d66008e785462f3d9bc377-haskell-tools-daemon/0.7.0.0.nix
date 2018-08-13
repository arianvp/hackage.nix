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
        name = "haskell-tools-daemon";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Background process for Haskell-tools refactor that editors can connect to.";
      description = "Background process for Haskell-tools refactor that editors can connect to.";
      buildType = "Simple";
    };
    components = {
      "haskell-tools-daemon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.strict)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.references)
          (hsPkgs.network)
          (hsPkgs.Diff)
          (hsPkgs.haskell-tools-ast)
          (hsPkgs.haskell-tools-prettyprint)
          (hsPkgs.haskell-tools-refactor)
        ];
      };
      exes = {
        "ht-daemon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-tools-daemon)
          ];
        };
      };
      tests = {
        "haskell-tools-daemon-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.ghc)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.aeson)
            (hsPkgs.haskell-tools-daemon)
          ];
        };
      };
    };
  }