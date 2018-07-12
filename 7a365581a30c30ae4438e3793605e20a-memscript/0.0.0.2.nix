{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "memscript";
          version = "0.0.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
        author = "Ahn, Ki Yung";
        homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/memscript";
        url = "";
        synopsis = "Command line utility for memorizing scriptures or any other text";
        description = "\"memscript <filename>\"\nRun memscript with a UTF-8 (or ASCII since ASCII is a subset of UTF8)\nplain text file.  Try to exactly guess the text line by line.  If\nyour guess is wrong it will show you a diff like output comparing\nyour guess and the original verse.  This will repeat until you get\nall the verses right.\nFor the test data I included four beloved Psalms (1,23,121,127)\nfrom the Old Testament, each in Revised Korean Version (RKV) and\nNew International Version (NIV), which I happened to have had to\nmemorize.  You can use it for any other text you'd want to memorize,\nsuch as your favorite poems, quotes, or whatsoever.\nNo craft or ticks, really simple and straightforward utility but\nserves well for the purpose.  I used readline because that was\nthe only sane way I know of handling multibyte inputs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "memscript" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.readline
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }