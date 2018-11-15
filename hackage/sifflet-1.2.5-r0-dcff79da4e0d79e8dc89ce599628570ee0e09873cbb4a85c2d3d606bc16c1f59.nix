{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { no-link = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "sifflet";
        version = "1.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2009-2011 Gregory D. Weber";
      maintainer = "\"gdweber\" ++ drop 3 \"abc@\" ++ \"iue.edu\"";
      author = "Gregory D. Weber";
      homepage = "http://mypage.iu.edu/~gdweber/software/sifflet/";
      url = "";
      synopsis = "A simple, visual, functional programming language.";
      description = "Sifflet is a visual, functional programming language.\nSifflet users can make programs by drawing diagrams\nto connect functions and other units.\nSifflet show the intermediate steps of the computation\non the diagram, and can expand function calls to show further details.\nIt is intended as an aid for learning about recursion.\nVersion 1.2.5: Compatibility with GHC 7.4.1.\nVersion 1.2.4: Dependencies revised for compatibility with HXT 9.1.\nVersion 1.2.3: Dependencies revised for compatibility with GHC 7.0\nand Haskell Platform 2011.2.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sifflet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cairo)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.containers)
            (hsPkgs.fgl)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.sifflet-lib)
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
          libs = pkgs.lib.optionals (flags.no-link) [
            (pkgs."gdk-x11-2.0")
            (pkgs."gtk-x11-2.0")
          ];
        };
      };
    };
  }