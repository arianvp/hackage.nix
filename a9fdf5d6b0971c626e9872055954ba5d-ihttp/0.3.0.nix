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
      specVersion = "1.6";
      identifier = {
        name = "ihttp";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Ertugrul Söylemez";
      maintainer = "Ertugrul Söylemez <es@ertes.de>";
      author = "Ertugrul Söylemez <es@ertes.de>";
      homepage = "";
      url = "";
      synopsis = "Incremental HTTP iteratee";
      description = "Incremental iteratee-based HTTP library using the 'enumerator'\npackage.";
      buildType = "Simple";
    };
    components = {
      "ihttp" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.contstuff)
          (hsPkgs.enumerator)
          (hsPkgs.netlines)
        ];
      };
      exes = {
        "ihttp-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
          ];
        };
      };
    };
  }