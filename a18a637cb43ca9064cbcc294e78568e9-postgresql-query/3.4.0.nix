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
        name = "postgresql-query";
        version = "3.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "Aleksey Uimanov";
      homepage = "https://bitbucket.org/s9gf4ult/postgresql-query";
      url = "";
      synopsis = "Sql interpolating quasiquote plus some kind of primitive ORM\nusing it";
      description = "";
      buildType = "Simple";
    };
    components = {
      "postgresql-query" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.file-embed)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.hreader)
          (hsPkgs.hset)
          (hsPkgs.inflections)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.th-lift-instances)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.type-fun)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.derive)
            (hsPkgs.postgresql-query)
            (hsPkgs.postgresql-simple)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
          ];
        };
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.postgresql-query)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }