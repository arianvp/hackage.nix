{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hs-duktape";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2015 Greg V <greg@unrelenting.technology>, 2013-2015 Duktape authors";
        maintainer = "greg@unrelenting.technology";
        author = "Greg V";
        homepage = "https://github.com/myfreeweb/hs-duktape";
        url = "";
        synopsis = "Haskell bindings for a very compact embedded ECMAScript (JavaScript) engine.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hs-duktape" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.aeson
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.hspec-expectations-pretty-diff
              hsPkgs.aeson
              hsPkgs.aeson-qq
              hsPkgs.raw-strings-qq
              hsPkgs.template-haskell
              hsPkgs.hs-duktape
            ];
          };
        };
      };
    }