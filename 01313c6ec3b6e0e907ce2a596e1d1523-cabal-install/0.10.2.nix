{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
      bytestring-in-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cabal-install";
          version = "0.10.2";
        };
        license = "BSD-3-Clause";
        copyright = "2005 Lemmih <lemmih@gmail.com>\n2006 Paolo Martini <paolo@nemail.it>\n2007 Bjorn Bringert <bjorn@bringert.net>\n2007 Isaac Potoczny-Jones <ijones@syntaxpolice.org>\n2007-2011 Duncan Coutts <duncan@community.haskell.org>";
        maintainer = "cabal-devel@haskell.org";
        author = "Lemmih <lemmih@gmail.com>\nPaolo Martini <paolo@nemail.it>\nBjorn Bringert <bjorn@bringert.net>\nIsaac Potoczny-Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
        homepage = "http://www.haskell.org/cabal/";
        url = "";
        synopsis = "The command-line interface for Cabal and Hackage.";
        description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal" = {
            depends  = (([
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.filepath
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.zlib
              hsPkgs.time
            ] ++ (if _flags.old-base
              then [ hsPkgs.base ]
              else [
                hsPkgs.base
                hsPkgs.process
                hsPkgs.directory
                hsPkgs.pretty
                hsPkgs.random
                hsPkgs.containers
                hsPkgs.array
                hsPkgs.old-time
              ])) ++ (if _flags.bytestring-in-base
              then [ hsPkgs.base ]
              else [
                hsPkgs.base
                hsPkgs.bytestring
              ])) ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }