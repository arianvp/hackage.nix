{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sifflet-lib";
          version = "2.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2009-2012 Gregory D. Weber";
        maintainer = "\"gdweber\" ++ drop 3 \"abc@\" ++ \"iue.edu\"";
        author = "Gregory D. Weber";
        homepage = "http://mypage.iu.edu/~gdweber/software/sifflet/";
        url = "";
        synopsis = "Library of modules shared by sifflet and its\ntests and its exporters.";
        description = "Supporting modules for the Sifflet visual,\nfunctional programming language (Hackage 'sifflet' package).\nVersion 2.0.0.0 adds partial support for higher-order functions, like map\nand filter.";
        buildType = "Simple";
      };
      components = {
        "sifflet-lib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cairo
            hsPkgs.glib
            hsPkgs.gtk
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.fgl
            hsPkgs.hxt
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.process
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          libs = [
            pkgs."gdk-x11-2.0"
            pkgs."gtk-x11-2.0"
          ];
        };
      };
    }