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
        name = "mime";
        version = "0.3.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2009 Galois Inc.";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Sigbjorn Finne, Galois, Inc.";
      homepage = "https://github.com/GaloisInc/mime";
      url = "";
      synopsis = "Working with MIME types.";
      description = "Working with MIME types.";
      buildType = "Simple";
    };
    components = {
      "mime" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }