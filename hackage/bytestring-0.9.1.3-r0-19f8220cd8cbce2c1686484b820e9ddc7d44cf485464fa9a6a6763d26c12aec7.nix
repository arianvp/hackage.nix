{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-syb = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bytestring";
        version = "0.9.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart   2005-2008,\n(c) Duncan Coutts 2006-2007,\n(c) David Roundy  2003-2005.";
      maintainer = "dons@galois.com, duncan@haskell.org";
      author = "Don Stewart, Duncan Coutts";
      homepage = "http://www.cse.unsw.edu.au/~dons/fps.html";
      url = "";
      synopsis = "Fast, packed, strict and lazy byte arrays with a list interface";
      description = "A time and space-efficient implementation of byte vectors using\npacked Word8 arrays, suitable for high performance use, both in terms\nof large data quantities, or high speed requirements. Byte vectors\nare encoded as strict 'Word8' arrays of bytes, and lazy lists of\nstrict chunks, held in a 'ForeignPtr', and can be passed between C\nand Haskell with little effort.\n\nTest coverage data for this library is available at:\n<http://code.haskell.org/~dons/tests/bytestring/hpc_index.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
        ] ++ (if flags.split-syb
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.ghc-prim);
      };
    };
  }