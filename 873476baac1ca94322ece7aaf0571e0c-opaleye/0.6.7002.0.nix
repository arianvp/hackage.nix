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
      specVersion = "1.18";
      identifier = {
        name = "opaleye";
        version = "0.6.7002.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018 Purely Agile Limited";
      maintainer = "Purely Agile";
      author = "Purely Agile";
      homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
      url = "";
      synopsis = "An SQL-generating DSL targeting PostgreSQL";
      description = "An SQL-generating DSL targeting PostgreSQL.  Allows\nPostgres queries to be written within Haskell in a\ntypesafe and composable fashion.";
      buildType = "Simple";
    };
    components = {
      "opaleye" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.postgresql-simple)
          (hsPkgs.pretty)
          (hsPkgs.product-profunctors)
          (hsPkgs.profunctors)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.uuid)
          (hsPkgs.void)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.dotenv)
            (hsPkgs.multiset)
            (hsPkgs.postgresql-simple)
            (hsPkgs.profunctors)
            (hsPkgs.product-profunctors)
            (hsPkgs.QuickCheck)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.opaleye)
          ];
        };
        "tutorial" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.postgresql-simple)
            (hsPkgs.profunctors)
            (hsPkgs.product-profunctors)
            (hsPkgs.time)
            (hsPkgs.opaleye)
          ];
        };
      };
    };
  }