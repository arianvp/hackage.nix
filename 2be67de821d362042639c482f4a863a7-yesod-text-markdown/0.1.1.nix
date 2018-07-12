{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-text-markdown";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "miffoljud@gmail.com";
        author = "Arash Rouhani";
        homepage = "";
        url = "";
        synopsis = "Yesod support for Text.Markdown.";
        description = "The contents of this package is t\nuse Text.Markdown in a typical yesod project, that is,\nthis module also contains instances related to\npersistence, even though it isn't tightly coupled to\nyesod.\n\nThis package is different from the yesod-markdown package\nwhich uses the pandoc renderer for markdown. The main\nadvantages of having Text.Markdown as underlying renderer\nis the much smaller dependencies and the permissiver\nlicense.  See\n<https://github.com/pbrisbin/yesod-markdown> and\n<https://github.com/snoyberg/markdown>.\n\nThis package intentionally tries to be like\nyesod-markdown, so switching between the markdown backends\nshould be easy.\n\nIf you wonder why the haddocks only show a few exports,\nit's because it doesn't show exporting of instances which\nis most of what this package is about.";
        buildType = "Simple";
      };
      components = {
        "yesod-text-markdown" = {
          depends  = [
            hsPkgs.base
            hsPkgs.markdown
            hsPkgs.yesod-core
            hsPkgs.yesod-form
            hsPkgs.yesod-persistent
            hsPkgs.persistent
            hsPkgs.text
            hsPkgs.hamlet
          ];
        };
      };
    }