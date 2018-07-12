{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "data-binary-ieee754";
          version = "0.4.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/data-binary-ieee754/";
        url = "";
        synopsis = "Parser/Serialiser for IEEE-754 floating-point values";
        description = "Convert Float and Decimal values to/from raw octets.";
        buildType = "Simple";
      };
      components = {
        "data-binary-ieee754" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
      };
    }