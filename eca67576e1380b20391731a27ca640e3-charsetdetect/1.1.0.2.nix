{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "charsetdetect";
          version = "1.1.0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "http://www.github.com/batterseapower/charsetdetect";
        url = "";
        synopsis = "Character set detection using Mozilla's Universal Character Set Detector";
        description = "Mozilla have developed a robust and efficient character set detection algorithm for\nuse in their web browsers.  The algorithm is able to detect all of the most frequently\nencountered character encodings totally automatically.\n\nThis library wraps up their library and exposes a very simple Haskell interface to it.\nThe library is portable, and is confirmed to work on both Unix and Windows.";
        buildType = "Simple";
      };
      components = {
        "charsetdetect" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = if system.isWindows
            then if system.isX86_64
              then [
                pkgs."stdc++-6"
                pkgs.gcc_s_seh-1
              ]
              else [
                pkgs."stdc++-6"
                pkgs.gcc_s_dw2-1
              ]
            else [ pkgs."stdc++" ];
        };
      };
    }