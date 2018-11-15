{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "hs-bibutils";
        version = "4.12";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/hs-bibutils";
      url = "";
      synopsis = "Haskell bindings to bibutils, the bibliography\nconversion utilities.";
      description = "Haskell bindings to Chris Putnam's bibutils, a\nlibrary that interconverts between various\nbibliography formats using a common MODS-format\nXML intermediate.\n\nhs-bibutils is available under the GNU GPL license. See\nthe LICENSE file for details.\n\nFor more details about bibutils, please check:\n<http://www.scripps.edu/~cdputnam/software/bibutils/>.\n\nThe original API documentation is available here:\n<http://www.scripps.edu/~cdputnam/software/bibutils/library_specs.html>.\n\nThe package release number refers to the release number of\nthe included bibutils library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if compiler.isGhc && compiler.version.ge "6.10"
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }