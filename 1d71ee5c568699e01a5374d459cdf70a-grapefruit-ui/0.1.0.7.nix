{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "grapefruit-ui";
          version = "0.1.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "© 2007–2009 Brandenburgische Technische Universität Cottbus\n© 2011–2014 Wolfgang Jeltsch";
        maintainer = "wolfgang-it@jeltsch.info";
        author = "Wolfgang Jeltsch";
        homepage = "https://grapefruit-project.org/";
        url = "https://hackage.haskell.org/package/grapefruit-ui-0.1.0.7/grapefruit-ui-0.1.0.7.tar.gz";
        synopsis = "Declarative user interface programming";
        description = "Grapefruit is a library for Functional Reactive Programming (FRP)\nwith a focus on user interfaces. FRP makes it possible to\nimplement reactive and interactive systems in a declarative\nstyle. To learn more about FRP, have a look at\n<http://haskell.org/haskellwiki/Functional_Reactive_Programming>.\n\nThis package contains general user interface support. To make use\nof it, it has to be complemented by a UI backend. It is possible\nto have different UI backends implementing the same general\ninterface on top of different UI toolkits. At the moment, the\nonly backend is one based on GTK+. This is provided by the\ngrapefruit-ui-gtk package.";
        buildType = "Simple";
      };
      components = {
        "grapefruit-ui" = {
          depends  = [
            hsPkgs.arrows
            hsPkgs.base
            hsPkgs.colour
            hsPkgs.containers
            hsPkgs.fraction
            hsPkgs.grapefruit-frp
            hsPkgs.grapefruit-records
          ];
        };
      };
    }