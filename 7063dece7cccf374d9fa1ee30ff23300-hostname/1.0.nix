{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hostname";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
        author = "Max Bolingbroke <batterseapower@hotmail.com>";
        homepage = "";
        url = "";
        synopsis = "A very simple package providing a cross-platform means of determining the hostname";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hostname" = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          libs = pkgs.lib.optional system.isWindows pkgs.kernel32;
        };
      };
    }