{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      buildexamples = false;
      specificpkgconfig = true;
      llvm304 = false;
      llvm305 = false;
      llvm306 = false;
      llvm307 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "llvm-ffi";
          version = "3.8.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
        author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
        homepage = "http://haskell.org/haskellwiki/LLVM";
        url = "";
        synopsis = "FFI bindings to the LLVM compiler toolkit.";
        description = "FFI bindings to the LLVM compiler toolkit.\n\nInstallation is based on @pkg-config@\nsince this is best supported by Cabal.\nThis requires an @llvm.pc@ file\nwhich unfortunately is not generated by the LLVM source package.\nYou may be lucky that your distribution package includes that file.\nIf not, you can generate it yourself\nusing the @llvm-pkg-config@ package.\n\nWe try to stay up to date with LLVM releases.\nThe current version of this package is compatible with LLVM 3.4-3.8.\nPlease understand that the package may or may not work\nagainst older LLVM releases.\n\nWarning for inplace builds:\nRe-configuring the package using, say -fllvm307,\nand re-buildung it might result in corrupt code.\nYou must make sure that the stuff in @cbits@ is re-compiled.\nCabal or GHC may forget about that.\nYou are safe if you run @cabal clean@.";
        buildType = "Simple";
      };
      components = {
        "llvm-ffi" = {
          depends  = [
            hsPkgs.enumset
            hsPkgs.base
          ];
          pkgconfig = if _flags.llvm304
            then if _flags.specificpkgconfig
              then [ pkgconfPkgs."llvm-3.4" ]
              else [ pkgconfPkgs.llvm ]
            else if _flags.llvm305
              then if _flags.specificpkgconfig
                then [ pkgconfPkgs."llvm-3.5" ]
                else [ pkgconfPkgs.llvm ]
              else if _flags.llvm306
                then if _flags.specificpkgconfig
                  then [ pkgconfPkgs."llvm-3.6" ]
                  else [ pkgconfPkgs.llvm ]
                else if _flags.llvm307
                  then if _flags.specificpkgconfig
                    then [ pkgconfPkgs."llvm-3.7" ]
                    else [ pkgconfPkgs.llvm ]
                  else if _flags.specificpkgconfig
                    then [ pkgconfPkgs."llvm-3.8" ]
                    else [ pkgconfPkgs.llvm ];
        };
        exes = {
          "llvm-ffi-example" = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.llvm-ffi
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }