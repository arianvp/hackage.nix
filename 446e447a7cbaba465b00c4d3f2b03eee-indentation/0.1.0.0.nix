{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "indentation";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
        author = "Michael D. Adams <http://michaeldadams.org/>";
        homepage = "https://bitbucket.org/mdmkolbe/indentation";
        url = "";
        synopsis = "Indentation sensitive parsing combinators for Parsec";
        description = "";
        buildType = "Simple";
      };
      components = {
        "indentation" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
          ];
        };
      };
    }