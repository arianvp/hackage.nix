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
        name = "pgdl";
        version = "6.4";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sifmelcara";
      author = "sifmelcara";
      homepage = "";
      url = "";
      synopsis = "pgdl";
      description = "a terminal user interface program that downloads a video from html and plays immediately.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pgdl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.http-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.tagsoup)
            (hsPkgs.vty)
            (hsPkgs.text)
            (hsPkgs.vty-ui)
            (hsPkgs.configurator)
            (hsPkgs.filepath)
            (hsPkgs.binary)
          ];
        };
      };
    };
  }