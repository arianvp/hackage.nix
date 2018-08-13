{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "denominate";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Calvin Smith";
      maintainer = "cs-haskell@protempore.net";
      author = "Calvin Smith";
      homepage = "http://protempore.net/denominate/";
      url = "";
      synopsis = "Functions supporting bulk file and directory name\nnormalization.";
      description = "Denominate is a simple program and an associated library\nsupporting bulk file and directory name normalization.\n\nIf you've ever spent a long time changing filenames to\nget rid of whitespace or convert periods and underscores\nto hyphens, you know why it exists.";
      buildType = "Simple";
    };
    components = {
      "denominate" = {
        depends  = if _flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.filepath)
          ];
      };
      exes = {
        "denominate" = {
          depends  = if _flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.filepath)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.filepath)
            ];
        };
      };
    };
  }