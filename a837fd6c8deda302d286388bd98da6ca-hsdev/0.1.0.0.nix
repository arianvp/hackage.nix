{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsdev";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voidex@live.com";
        author = "Alexandr `Voidex` Ruchkin";
        homepage = "https://github.com/mvoidex/hsdev";
        url = "";
        synopsis = "Haskell development library and tool with support of autocompletion, symbol info, go to declaration, find references etc.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hsdev" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.bytestring
            hsPkgs.Cabal
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-mod
            hsPkgs.ghc-paths
            hsPkgs.haddock
            hsPkgs.haskell-src-exts
            hsPkgs.hdocs
            hsPkgs.HTTP
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.process
            hsPkgs.regexpr
            hsPkgs.time
            hsPkgs.attoparsec
            hsPkgs.unordered-containers
            hsPkgs.text
          ];
        };
        exes = {
          "hsdev" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.monad-loops
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.process
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          };
          "hsinspect" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
          "hsclearimports" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.directory
              hsPkgs.ghc
              hsPkgs.haskell-src-exts
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
          "hscabal" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
          "hshayoo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hsdev
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }