{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "microlens-th";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Artyom <yom@artyom.me>";
        author = "Artyom";
        homepage = "http://github.com/aelve/microlens";
        url = "";
        synopsis = "Automatic generation of record lenses for 'microlens'.";
        description = "This package lets you automatically generate lenses for data types; code\nwas extracted from the lens package, and therefore generated lenses are\nfully compatible with ones generated by lens (and can be used both from\nlens and microlens).";
        buildType = "Simple";
      };
      components = {
        "microlens-th" = {
          depends  = [
            hsPkgs.base
            hsPkgs.microlens
            hsPkgs.containers
            hsPkgs.template-haskell
          ];
        };
      };
    }