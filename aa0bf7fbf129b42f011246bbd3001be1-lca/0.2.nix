{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lca";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2012 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/lca/";
        url = "";
        synopsis = "O(log n) persistent on-line lowest common ancestor calculation without preprocessing with optional monoidal annotations";
        description = "O(log n) persistent on-line lowest common ancestor calculation without preprocessing with optional monoidal annotations";
        buildType = "Simple";
      };
      components = {
        "lca" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }