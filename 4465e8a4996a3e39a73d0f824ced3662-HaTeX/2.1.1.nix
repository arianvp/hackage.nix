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
        name = "HaTeX";
        version = "2.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danieldiaz@asofilak.es";
      author = "Daniel Diaz";
      homepage = "http://ddiaz.asofilak.es/packages/HaTeX";
      url = "";
      synopsis = "Library for write LaTeX code.";
      description = "You can write LaTeX files using this package.\nSee Text.LaTeX for a brief introduction.\n\nReport any bug or suggestion to the author:\n\ndanieldiaz\\@asofilak.es\n\nAlso, if you have an example where you use HaTeX, you could send it to the same email. Thanks in advance.\n\nChanges from last version:\n\n* Now, Text.LaTeX module re-export Data.String.\n\n* Fixed some documentation.";
      buildType = "Simple";
    };
    components = {
      "HaTeX" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.dstring)
          (hsPkgs.to-string-class)
          (hsPkgs.string-combinators)
          (hsPkgs.filepath)
        ];
      };
    };
  }