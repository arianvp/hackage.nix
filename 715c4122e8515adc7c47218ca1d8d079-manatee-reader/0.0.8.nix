{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "manatee-reader";
          version = "0.0.8";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2009 ~ 2010 Andy Stewart";
        maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
        author = "Andy Stewart";
        homepage = "";
        url = "";
        synopsis = "Feed reader extension for Manatee.";
        description = "manatee-reader is feed reader extension for Manatee (Haskell/Gtk+ Integrated Live Environment)\n\nDefault configuration template at Config\\/Reader.hs, copy to directory `HOME/.manatee/config/`.\n\nNote, you need re-install package to start the configuration file take effect the next time,\n\nVideo at (Select 720p HD) at : <http://www.youtube.com/watch?v=weS6zys3U8k> <http://www.youtube.com/watch?v=A3DgKDVkyeM> <http://v.youku.com/v_show/id_XMjI2MDMzODI4.html>\n\nScreenshots at : <http://goo.gl/MkVw>\n\nManual at : <http://haskell.org/haskellwiki/Manatee>\n\nIRC channel: irc.freenode.net 6667 <##manatee>\n\nMailing-List: manatee-user\\@googlegroups.com manatee-develop\\@googlegroups.com\n";
        buildType = "Custom";
      };
      components = {
        "manatee-reader" = {
          depends  = [
            hsPkgs.base
            hsPkgs.manatee-core
            hsPkgs.dbus-client
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.gtk-serialized-event
            hsPkgs.gtk
            hsPkgs.text
            hsPkgs.webkit
            hsPkgs.feed
            hsPkgs.download-curl
            hsPkgs.utf8-string
            hsPkgs.filepath
          ];
        };
        exes = {
          "manatee-reader" = {};
        };
      };
    }