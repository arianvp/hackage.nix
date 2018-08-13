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
      specVersion = "1.6";
      identifier = {
        name = "threadscope";
        version = "0.2.8";
      };
      license = "BSD-3-Clause";
      copyright = "2009-2010 Satnam Singh,\n2009-2011 Simon Marlow,\n2009 Donnie Jones,\n2011-2012 Duncan Coutts,\n2011-2014 Mikolaj Konarski,\n2011 Nicolas Wu,\n2011 Eric Kow";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Satnam Singh <s.singh@ieee.org>,\nSimon Marlow <marlowsd@gmail.com>,\nDonnie Jones <donnie@darthik.com>,\nDuncan Coutts <duncan@well-typed.com>,\nMikolaj Konarski <mikolaj@well-typed.com>,\nNicolas Wu <nick@well-typed.com>,\nEric Kow <eric@well-typed.com>";
      homepage = "http://www.haskell.org/haskellwiki/ThreadScope";
      url = "";
      synopsis = "A graphical tool for profiling parallel Haskell programs.";
      description = "ThreadScope is a graphical viewer for thread profile\ninformation generated by the Glasgow Haskell compiler\n(GHC).\n\nThe Threadscope program allows us to debug the parallel\nperformance of Haskell programs. Using Threadscope we can\ncheck to see that work is well balanced across the\navailable processors and spot performance issues relating\nto garbage collection or poor load balancing.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "threadscope" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.glib)
            (hsPkgs.pango)
            (hsPkgs.binary)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.ghc-events)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.time)
          ] ++ pkgs.lib.optional (system.isOsx) (hsPkgs.gtk-mac-integration)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
        };
      };
    };
  }