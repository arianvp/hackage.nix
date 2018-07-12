{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "STM32F103xx-SVD";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
        author = "Marc Fontaine <Marc.Fontaine@gmx.de>";
        homepage = "";
        url = "";
        synopsis = "Definition for Peripherals,Registers and Fields from STM32F103xx.svd";
        description = "Definition for Peripherals,Registers and Fields from STM32F103xx.svd\nThis package contains tables, that have been generated from the\ncorresponding svd file. Do not edit.";
        buildType = "Simple";
      };
      components = {
        "STM32F103xx-SVD" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }