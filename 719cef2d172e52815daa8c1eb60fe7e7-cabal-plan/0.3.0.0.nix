{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      exe = true;
      _ = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.0";
      identifier = {
        name = "cabal-plan";
        version = "0.3.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Library and utiltity for processing cabal's plan.json file";
      description = "This package provides a library for decoding @plan.json@ files as\nwell as the simple tool @cabal-plan@ for extracting and pretty printing\nthe information contained in the @plan.json@ file.\n\n@plan.json@ files are generated by [cabal](https://hackage.haskell.org/package/cabal-install)'s [nix-style local builds](http://cabal.readthedocs.io/en/latest/nix-local-build.html) and contain detailed information about the build/install plan computed by the cabal solver.";
      buildType = "Simple";
    };
    components = {
      "cabal-plan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.base16-bytestring)
        ];
      };
      sublibs = {
        "topograph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.base-orphans)
            (hsPkgs.containers)
            (hsPkgs.vector)
          ];
        };
      };
      exes = {
        "cabal-plan" = {
          depends  = pkgs.lib.optionals (_flags.exe) ([
            (hsPkgs.cabal-plan)
            (hsPkgs.topograph)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.ansi-terminal)
            (hsPkgs.base-compat)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups));
        };
      };
    };
  }