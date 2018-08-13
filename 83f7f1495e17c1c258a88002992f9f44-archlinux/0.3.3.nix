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
        name = "archlinux";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart <dons@galois.com>";
      homepage = "http://code.haskell.org/~dons/code/archlinux";
      url = "";
      synopsis = "Support for working with Arch Linux packages";
      description = "Support for working with Arch Linux packages\n\nTo get info about a package:\n\n> info \"xmonad\"\n\nTo find packages matching a string:\n\n> search \"xmonad\"\n\nTo find packages owned by a maintainer:\n\n> maintainer \"arch-haskell\"\n\nGenerate an html page of interesting facts about\npackages in AUR and Hackage.\n\n> report [\"xmonad\"]\n\nSee also the cabal2arch tool <http://hackage.haskell.org/package/cabal2arch>\nfor conversion between Hackage and AUR.";
      buildType = "Simple";
    };
    components = {
      "archlinux" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.Cabal)
          (hsPkgs.json)
          (hsPkgs.pretty)
          (hsPkgs.prettyclass)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.xhtml)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.parallel)
          (hsPkgs.deepseq)
          (hsPkgs.strict-concurrency)
          (hsPkgs.old-time)
          (hsPkgs.csv)
        ];
      };
      exes = {
        "arch-report" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.strict-concurrency)
            (hsPkgs.old-time)
            (hsPkgs.csv)
          ];
        };
        "distro-map" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.strict-concurrency)
            (hsPkgs.old-time)
            (hsPkgs.csv)
          ];
        };
        "get-arch-url" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.strict-concurrency)
            (hsPkgs.old-time)
            (hsPkgs.csv)
          ];
        };
        "arch-haskell-packages" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.json)
            (hsPkgs.pretty)
            (hsPkgs.prettyclass)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.xhtml)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.strict-concurrency)
            (hsPkgs.old-time)
            (hsPkgs.csv)
          ];
        };
        "update-aur-log" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }