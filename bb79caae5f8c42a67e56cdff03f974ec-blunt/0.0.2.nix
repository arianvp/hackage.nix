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
        name = "blunt";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Point-free Haskell as a service.";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "blunt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "blunt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blunt)
          ];
        };
      };
    };
  }