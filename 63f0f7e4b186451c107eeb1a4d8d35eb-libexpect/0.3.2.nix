{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "libexpect";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stroantree@gmail.com";
        author = "Stephen Roantree";
        homepage = "";
        url = "";
        synopsis = "Library for interacting with console applications via pseudoterminals.";
        description = "Bindings to libexpect.";
        buildType = "Configure";
      };
      components = {
        "libexpect" = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
          libs = [ pkgs.expect pkgs.tcl ];
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
      };
    }