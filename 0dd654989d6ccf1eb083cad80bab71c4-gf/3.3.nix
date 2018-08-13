{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      interrupt = true;
      server = true;
      cclazy = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gf";
        version = "3.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "http://www.grammaticalframework.org/";
      url = "";
      synopsis = "Grammatical Framework";
      description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
      buildType = "Custom";
    };
    components = {
      "gf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.fst)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
        ];
      };
      exes = {
        "gf" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.fst)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.pretty)
            (hsPkgs.mtl)
            (hsPkgs.haskeline)
          ] ++ pkgs.lib.optionals (_flags.server) [
            (hsPkgs.httpd-shed)
            (hsPkgs.network)
            (hsPkgs.silently)
            (hsPkgs.utf8-string)
            (hsPkgs.json)
            (hsPkgs.cgi)
          ]) ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          build-tools = [
            (hsPkgs.buildPackages.happy)
            (hsPkgs.buildPackages.alex)
          ];
        };
      };
    };
  }