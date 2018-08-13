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
        name = "xss-sanitize";
        version = "0.2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://github.com/gregwebs/haskell-xss-sanitize";
      url = "";
      synopsis = "sanitize untrusted HTML to prevent XSS attacks";
      description = "run untrusted HTML through Text.HTML.SanitizeXSS.sanitizeXSS to prevent XSS attacks. see README.md <http://github.com/gregwebs/haskell-xss-sanitize> for more details";
      buildType = "Simple";
    };
    components = {
      "xss-sanitize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.tagsoup)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
        ];
      };
    };
  }