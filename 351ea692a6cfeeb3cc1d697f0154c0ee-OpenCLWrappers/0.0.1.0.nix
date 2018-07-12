{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      link = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "OpenCLWrappers";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Renaissance Computing Institute, Emil Karlson";
        maintainer = "Emil Karlson <jekarlson@gmail.com>";
        author = "J.R. Heard, Emil Karlson";
        homepage = "https://github.com/jkarlson/OpenCLWrappers";
        url = "";
        synopsis = "The OpenCL Standard for heterogenous data-parallel computing";
        description = "Light opencl wrappers, a fork of the OpenCLRaw package.";
        buildType = "Simple";
      };
      components = {
        "OpenCLWrappers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
          libs = pkgs.lib.optional _flags.link pkgs.OpenCL;
        };
      };
    }