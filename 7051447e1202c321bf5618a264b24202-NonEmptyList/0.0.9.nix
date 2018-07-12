{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "NonEmptyList";
          version = "0.0.9";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Tony Morris, Oliver Taylor, Eelis van der Weegen";
        maintainer = "code@tmorris.net";
        author = "Tony Morris, Oliver Taylor, Eelis van der Weegen";
        homepage = "http://code.google.com/p/nonempty/";
        url = "";
        synopsis = "A list with a length of at least one.";
        description = "A list with a length of at least one and type-safe head/tail operations.";
        buildType = "Simple";
      };
      components = {
        "NonEmptyList" = {
          depends  = [
            hsPkgs.base
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
            hsPkgs.QuickCheck
            hsPkgs.Semigroup
            hsPkgs.category-extras
          ];
        };
      };
    }