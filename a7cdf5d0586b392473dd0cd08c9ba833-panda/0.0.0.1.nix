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
      specVersion = "1.2";
      identifier = {
        name = "panda";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/panda/";
      url = "";
      synopsis = "Simple Static Blog Engine";
      description = "Simple Static Blog Engine";
      buildType = "Simple";
    };
    components = {
      "panda" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.pandoc)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mps)
          (hsPkgs.parsedate)
          (hsPkgs.rss)
          (hsPkgs.xhtml)
          (hsPkgs.kibro)
        ];
      };
    };
  }