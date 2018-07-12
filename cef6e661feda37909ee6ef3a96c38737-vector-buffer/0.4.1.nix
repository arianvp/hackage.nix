{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "vector-buffer";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell.vivian.mcphail@gmail.com";
        author = "Vivian McPhail";
        homepage = "";
        url = "";
        synopsis = "A buffer compatible with Data.Vector.*";
        description = "A buffer type that can easily be converted to a Data.Vector.Storable vector\nfrom the vector package and compatible with hmatrix.\n\nElements are pushed into the buffer.  When the buffer is converted to a read-only\nvector, the last-pushed element occurs at the end.\n\nMonadic map functions also operate so that the last-pushed element is treated last.";
        buildType = "Simple";
      };
      components = {
        "vector-buffer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.deepseq
          ];
        };
      };
    }