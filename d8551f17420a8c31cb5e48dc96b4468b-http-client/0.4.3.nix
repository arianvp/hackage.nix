{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-client";
        version = "0.4.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "An HTTP client engine, intended as a base layer for more user-friendly packages.";
      description = "This codebase has been refactored from http-conduit.";
      buildType = "Simple";
    };
    components = {
      "http-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.data-default-class)
          (hsPkgs.time)
          (hsPkgs.network)
          (hsPkgs.streaming-commons)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.deepseq)
          (hsPkgs.case-insensitive)
          (hsPkgs.base64-bytestring)
          (hsPkgs.publicsuffixlist)
          (hsPkgs.cookie)
          (hsPkgs.exceptions)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.filepath)
          (hsPkgs.mime-types)
          (hsPkgs.ghc-prim)
        ] ++ (if _flags.network-uri
          then [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ]
          else [ (hsPkgs.network) ]);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.blaze-builder)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.case-insensitive)
            (hsPkgs.base64-bytestring)
            (hsPkgs.zlib)
            (hsPkgs.async)
            (hsPkgs.streaming-commons)
          ];
        };
      };
    };
  }