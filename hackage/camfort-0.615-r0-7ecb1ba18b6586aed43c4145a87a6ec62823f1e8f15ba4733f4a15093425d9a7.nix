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
      specVersion = "1.6";
      identifier = {
        name = "camfort";
        version = "0.615";
      };
      license = "BSD-3-Clause";
      copyright = "2012-2016 University of Cambridge";
      maintainer = "dom.orchard@gmail.com";
      author = "Dominic Orchard, Matthew Danish, Mistral Contrastin, Andrew Rice, Oleg Oshmyan";
      homepage = "";
      url = "";
      synopsis = "CamFort - Cambridge Fortran infrastructure";
      description = "CamFort is a tool for the analysis, transformation, and extension of Fortran code base.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.generic-deriving)
          (hsPkgs.uniplate)
          (hsPkgs.comonad)
          (hsPkgs.fclabels)
          (hsPkgs.haskell-src)
          (hsPkgs.syz)
          (hsPkgs.syb)
          (hsPkgs.matrix)
          (hsPkgs.hmatrix)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.language-fortran)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
    };
  }