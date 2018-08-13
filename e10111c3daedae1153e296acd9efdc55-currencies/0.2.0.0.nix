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
        name = "currencies";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Campoverde";
      maintainer = "alx@sillybytes.net";
      author = "Daniel Campoverde";
      homepage = "https://github.com/alx741/currencies#readme";
      url = "";
      synopsis = "Currencies representation, pretty printing and conversion";
      description = "ISO 4217 Currencies representation, pretty printing and conversion:\n\n* Represent monetary amounts of a particular currency in a type-safe manner\n\n* Convert amounts between different currencies\n\n* Print human readable amounts";
      buildType = "Simple";
    };
    components = {
      "currencies" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
      tests = {
        "currencies-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.currencies)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }