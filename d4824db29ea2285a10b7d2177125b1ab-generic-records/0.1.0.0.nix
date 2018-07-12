{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "generic-records";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "kiss.csongor.kiss@gmail.com";
        author = "Csongor Kiss";
        homepage = "https://github.com/kcsongor/generic-records";
        url = "";
        synopsis = "Magic record operations using generics";
        description = "This package uses the GHC8 Generic representation of records to derive magic classes (a la OverloadedRecordLabels), and prove structural subtyping relationship between records. The latter can be used to upcast the \"sub-record\" to the more general \"interface\".";
        buildType = "Simple";
      };
      components = {
        "generic-records" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }