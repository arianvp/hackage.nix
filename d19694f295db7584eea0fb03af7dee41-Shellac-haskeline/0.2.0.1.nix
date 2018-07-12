{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Shellac-haskeline";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Judah Jacobson";
        maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
        author = "Judah Jacobson";
        homepage = "";
        url = "";
        synopsis = "Haskeline backend module for Shellac";
        description = "This module provides a backend for Shellac using the Haskeline library.  It\nprovides rich line editing capabilities, command completion and command\nhistory features.";
        buildType = "Simple";
      };
      components = {
        "Shellac-haskeline" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Shellac
            hsPkgs.haskeline
            hsPkgs.mtl
            hsPkgs.bytestring
          ];
        };
      };
    }