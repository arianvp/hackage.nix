{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "stream-fusion";
        version = "0.1.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "duncan.coutts@worc.ox.ac.uk, dons00@gmail.com";
      author = "Duncan Coutts, Don Stewart";
      homepage = "http://hackage.haskell.org/trac/ghc/ticket/915";
      url = "";
      synopsis = "Faster Haskell lists using stream fusion";
      description = "This package provides the standard Haskell list library\nreimplemented to allow stream fusion. This should in general\nprovide faster list operations, and faster code for list-heavy\nprograms.  See the paper /Stream Fusion: From Lists to Streams to Nothing at All/,\nCoutts, Leshchinskiy and Stewart, 2007.\nTo use, simply import Data.List.Stream in place of Data.List,\nand hide list functions from the Prelude.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }