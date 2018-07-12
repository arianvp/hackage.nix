{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "music-pitch-literal";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Overloaded pitch literals.";
        description = "This package allow you to write the pitches of standard notation as expressions\noverloaded on result type. This works exactly like numeric literals (and string\nliterals when using the @OverloadedStrings@ extension).";
        buildType = "Simple";
      };
      components = {
        "music-pitch-literal" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }