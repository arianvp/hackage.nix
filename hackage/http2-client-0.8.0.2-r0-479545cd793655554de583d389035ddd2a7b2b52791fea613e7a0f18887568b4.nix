{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http2-client";
        version = "0.8.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-client";
      url = "";
      synopsis = "A native HTTP2 client library.";
      description = "Please read the README.md at the homepage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.http2)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.tls)
        ];
      };
      tests = {
        "http2-client-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http2-client)
          ];
        };
      };
    };
  }