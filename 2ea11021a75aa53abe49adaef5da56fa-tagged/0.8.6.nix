{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      deepseq = true;
      transformers = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tagged";
          version = "0.8.6";
        };
        license = "BSD-3-Clause";
        copyright = "2009-2015 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/tagged";
        url = "";
        synopsis = "Haskell 98 phantom types to avoid unsafely passing dummy arguments";
        description = "Haskell 98 phantom types to avoid unsafely passing dummy arguments.";
        buildType = "Simple";
      };
      components = {
        "tagged" = {
          depends  = ((([
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.2" && compiler.version.lt "7.5")) hsPkgs.ghc-prim) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.6") hsPkgs.template-haskell) ++ pkgs.lib.optional _flags.deepseq hsPkgs.deepseq) ++ pkgs.lib.optionals _flags.transformers ([
            hsPkgs.transformers
          ] ++ (if compiler.isGhc && compiler.version.ge "7.10" || compiler.isGhcjs && true
            then [ hsPkgs.transformers ]
            else [
              hsPkgs.transformers-compat
            ]));
        };
      };
    }