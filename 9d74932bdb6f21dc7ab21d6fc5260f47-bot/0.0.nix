{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "bot";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "http://haskell.org/haskellwiki/Bot";
        url = "http://darcs.haskell.org/packages/bot";
        synopsis = "bots for functional reactive programming";
        description = "/Bot/ is an experimental, arrow-friendly foundation for functional\nreactive programming.\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/Bot>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
        buildType = "Custom";
      };
      components = {
        "bot" = {
          depends  = [
            hsPkgs.base
            hsPkgs.arrows
            hsPkgs.Stream
          ];
        };
      };
    }