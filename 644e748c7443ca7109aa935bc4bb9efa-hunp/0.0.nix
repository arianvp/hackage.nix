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
        name = "hunp";
        version = "0.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "deniz.a.m.dogan@gmail.com";
      author = "Deniz Dogan";
      homepage = "git://github.com/skorpan/hunp.git";
      url = "";
      synopsis = "Unpacker tool with DWIM";
      description = "hünp is an unpacker tool which does what you mean.  By matching on regular expressions, it automagically calls the right unpacking program for you, e.g. \"unrar\" for files ending in \".rar\", etc.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hunp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.pcre-light)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }