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
        name = "elm-server";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2011-2012 Evan Czaplicki";
      maintainer = "info@elm-lang.org";
      author = "Evan Czaplicki";
      homepage = "http://elm-lang.org";
      url = "";
      synopsis = "The Elm language server.";
      description = "This package provides a standalone, Happstack-based Elm server.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "elm-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.blaze-html)
            (hsPkgs.HTTP)
            (hsPkgs.happstack-server)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.Elm)
          ];
        };
      };
    };
  }