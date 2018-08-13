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
      specVersion = "1.10";
      identifier = {
        name = "hlibgit2";
        version = "0.17.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley, Sakari Jokinen, Jacob Stanleyyeah,";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to libgit2";
      description = "Bindings to libgit2 v0.17.0.";
      buildType = "Simple";
    };
    components = {
      "hlibgit2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.zlib)
        ];
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlibgit2)
            (hsPkgs.process)
          ];
        };
      };
    };
  }