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
        name = "yesod-markdown";
        version = "0.8.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
      author = "Alexander Dunlap, Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-markdown";
      url = "";
      synopsis = "Tools for using markdown in a yesod application";
      description = "A subset of pandoc functionality useful for markdown processing in yesod applications";
      buildType = "Simple";
    };
    components = {
      "yesod-markdown" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.xss-sanitize)
          (hsPkgs.directory)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.hamlet)
          (hsPkgs.persistent)
        ];
      };
    };
  }