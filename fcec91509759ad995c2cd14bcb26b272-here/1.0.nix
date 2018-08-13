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
      specVersion = "1.8";
      identifier = {
        name = "here";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "©2013 Taylor M. Hedberg";
      maintainer = "t@tmh.cc";
      author = "Taylor M. Hedberg";
      homepage = "https://github.com/tmhedberg/here";
      url = "";
      synopsis = "Here docs via quasiquotation";
      description = "Here docs via quasiquotation";
      buildType = "Simple";
    };
    components = {
      "here" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }