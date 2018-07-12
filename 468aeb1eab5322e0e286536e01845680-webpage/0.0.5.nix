{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "webpage";
          version = "0.0.5";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Organized and simple web page scaffold for blaze and lucid";
        description = "This is a general organization scheme for web pages, implemented for Lucid,\nand adapted for Blaze-html.\n\n>  import Web.Page.Lucid\n>\n>  λ> renderText \$ template def \"some content\"\n>\n>  ↪ \"<!DOCTYPE HTML><html><head><title></title><link href\n>    rel=\"icon\"></head><body>some content</body></html>\"\n\noverload the particular areas with record syntax and stuff:\n\n>  λ> let page = def { title = \"foo\"\n>                    , bodyScripts = script_ [src_ \"jquery.js\"] \"\"}\n>\n>\n>  λ> template page \"some content\"\n>\n>  ↪ \"<!DOCTYPE HTML><html><head><title>foo</title>\n>    </head><body>some content<script\n>    src=\\\"jquery.js\\\"></script></body></html>\"\n";
        buildType = "Simple";
      };
      components = {
        "webpage" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lucid
            hsPkgs.blaze-html
            hsPkgs.text
            hsPkgs.data-default
          ];
        };
      };
    }