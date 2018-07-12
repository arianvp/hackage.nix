{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "web-routes";
          version = "0.27.8";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "partners@seereason.com";
        author = "jeremy@seereason.com";
        homepage = "";
        url = "";
        synopsis = "Library for maintaining correctness and composability of URLs within an application.";
        description = "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.";
        buildType = "Simple";
      };
      components = {
        "web-routes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.utf8-string
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.2") [
            hsPkgs.ghc-prim
            hsPkgs.split
          ];
        };
        tests = {
          "Test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-th
              hsPkgs.web-routes
            ];
          };
        };
      };
    }