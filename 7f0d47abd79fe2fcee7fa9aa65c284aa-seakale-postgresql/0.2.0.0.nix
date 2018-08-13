{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "seakale-postgresql";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.feron@redspline.com";
      author = "Thomas Feron";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL backend for Seakale";
      description = "This package provides a way to run code written with Seakale with a PostgreSQL database.";
      buildType = "Simple";
    };
    components = {
      "seakale-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.seakale)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.time)
        ];
      };
    };
  }