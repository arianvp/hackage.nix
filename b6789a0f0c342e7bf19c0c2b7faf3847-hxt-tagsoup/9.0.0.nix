{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-tagsoup";
          version = "9.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2010 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "TagSoup parser for HXT";
        description = "The Tagsoup interface for the HXT lazy HTML parser.";
        buildType = "Simple";
      };
      components = {
        "hxt-tagsoup" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.tagsoup
            hsPkgs.hxt-charproperties
            hsPkgs.hxt
          ];
        };
      };
    }