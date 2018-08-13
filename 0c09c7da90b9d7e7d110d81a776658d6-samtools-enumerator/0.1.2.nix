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
      specVersion = "1.4";
      identifier = {
        name = "samtools-enumerator";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nicholas Ingolia";
      homepage = "";
      url = "";
      synopsis = "Enumerator interface to SamTools library";
      description = "Enumerator interface to SamTools library";
      buildType = "Simple";
    };
    components = {
      "samtools-enumerator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.enumerator)
          (hsPkgs.samtools)
        ];
      };
    };
  }