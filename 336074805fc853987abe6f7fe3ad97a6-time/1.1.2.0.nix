{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "time";
          version = "1.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<ashley@semantic.org>";
        author = "Ashley Yakeley";
        homepage = "http://semantic.org/TimeLib/";
        url = "";
        synopsis = "time library";
        description = "";
        buildType = "Custom";
      };
      components = {
        "time" = {
          depends  = ([
            hsPkgs.base
          ] ++ (if _flags.split-base
            then [
              hsPkgs.base
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
      };
    }