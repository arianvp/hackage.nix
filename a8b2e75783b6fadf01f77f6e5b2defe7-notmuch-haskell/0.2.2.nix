{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "notmuch-haskell";
          version = "0.2.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "© 2010 Bart Massey";
        maintainer = "Bart Massey <bart@cs.pdx.edu>";
        author = "Bart Massey <bart@cs.pdx.edu>";
        homepage = "";
        url = "";
        synopsis = "Binding for notmuch MUA library";
        description = "This is a very preliminary higher-level Haskell binding\nfor the Notmuch (notmuchmail.org) email indexing library.";
        buildType = "Simple";
      };
      components = {
        "notmuch-haskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.filepath
          ];
          libs = [
            pkgs.notmuch
            pkgs."gmime-2.4"
            pkgs.z
            pkgs.nsl
            pkgs."gobject-2.0"
            pkgs."glib-2.0"
            pkgs.talloc
            pkgs.xapian
          ];
        };
        exes = {
          "notmuch-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.old-locale
              hsPkgs.parseargs
            ];
            libs = [ pkgs.notmuch ];
          };
        };
      };
    }