{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "ats-pkg";
        version = "2.5.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/atspkg#readme";
      url = "";
      synopsis = "A build tool for ATS";
      description = "A collection of scripts to simplify building ATS projects.";
      buildType = "Custom";
    };
    components = {
      "ats-pkg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client)
          (hsPkgs.bytestring)
          (hsPkgs.file-embed)
          (hsPkgs.shake)
          (hsPkgs.bzlib)
          (hsPkgs.lzma)
          (hsPkgs.tar)
          (hsPkgs.zlib)
          (hsPkgs.http-client-tls)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.parallel-io)
          (hsPkgs.unix)
          (hsPkgs.lens)
          (hsPkgs.dhall)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.shake-ats)
          (hsPkgs.shake-ext)
          (hsPkgs.composition-prelude)
          (hsPkgs.optparse-applicative)
          (hsPkgs.zip-archive)
          (hsPkgs.temporary)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.binary)
          (hsPkgs.dependency)
          (hsPkgs.ats-setup)
        ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs)
        ];
      };
      exes = {
        "atspkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ats-pkg)
          ];
        };
      };
    };
  }