{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "time-recurrence";
          version = "0.1.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "hellertime@gmail.com";
        author = "Chris Heller";
        homepage = "http://github.com/hellertime/time-recurrence";
        url = "";
        synopsis = "Generate recurring dates.";
        description = "time-recurrence is a library for generating\nrecurring dates.\nIt is based on the iCalendar spec (RFC 5545).\nHowever it makes no attempt to strictly follow\nthe spec.";
        buildType = "Simple";
      };
      components = {
        "time-recurrence" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.data-ordlist
          ];
        };
      };
    }