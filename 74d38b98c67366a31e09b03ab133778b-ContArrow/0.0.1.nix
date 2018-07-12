{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "ContArrow";
          version = "0.0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2007 Evgeny Jukov";
        maintainer = "Evgeny Jukov <masloed@gmail.com>";
        author = "Evgeny Jukov";
        homepage = "http://macode.sourceforge.net";
        url = "";
        synopsis = "Control.Arrow.Transformer.Cont";
        description = "Control.Arrow.Transformer.Cont";
        buildType = "Custom";
      };
      components = {
        "ContArrow" = {
          depends  = [
            hsPkgs.base
            hsPkgs.arrows
          ];
        };
      };
    }