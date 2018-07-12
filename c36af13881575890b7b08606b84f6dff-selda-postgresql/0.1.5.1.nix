{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      haste = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "selda-postgresql";
          version = "0.1.5.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anton@ekblad.cc";
        author = "Anton Ekblad";
        homepage = "https://github.com/valderman/selda";
        url = "";
        synopsis = "PostgreSQL backend for the Selda database EDSL.";
        description = "PostgreSQL backend for the Selda database EDSL.\nRequires the PostgreSQL @libpq@ development libraries to be\ninstalled.";
        buildType = "Simple";
      };
      components = {
        "selda-postgresql" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.selda
            hsPkgs.text
          ] ++ pkgs.lib.optional (!_flags.haste) hsPkgs.postgresql-libpq) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.11") hsPkgs.transformers;
        };
      };
    }