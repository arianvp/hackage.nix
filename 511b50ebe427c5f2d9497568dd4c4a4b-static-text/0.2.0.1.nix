{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      bytestring = true;
      text = true;
      vector = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "static-text";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/static-text#readme";
      url = "";
      synopsis = "Lists, Texts, ByteStrings and Vectors of statically known length";
      description = "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.";
      buildType = "Simple";
    };
    components = {
      "static-text" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (_flags.bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (_flags.text) (hsPkgs.text)) ++ pkgs.lib.optional (_flags.vector) (hsPkgs.vector);
      };
      tests = {
        "static-text-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.template-haskell)
          ];
        };
        "static-text-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.static-text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }