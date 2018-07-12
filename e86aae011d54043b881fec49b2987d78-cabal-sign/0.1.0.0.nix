{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-sign";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Sign and verify Cabal packages.";
        description = "Sign and verify Cabal packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-sign" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pureMD5
              hsPkgs.optparse-applicative
              hsPkgs.zlib
              hsPkgs.tar
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.cereal
              hsPkgs.filepath
              hsPkgs.process
            ];
          };
        };
      };
    }