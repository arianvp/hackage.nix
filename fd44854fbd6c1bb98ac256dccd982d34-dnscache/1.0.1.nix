{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dnscache";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Caching DNS resolver library and mass DNS resolver utility";
        description = "This library implements a caching, asynchronous DNS resolver and\nprovides a command line utility for mass DNS resolution.";
        buildType = "Simple";
      };
      components = {
        "dnscache" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.contstuff
            hsPkgs.dns
            hsPkgs.iproute
            hsPkgs.time
          ];
        };
        exes = {
          "massdns" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }