{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linux-cgroup";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "Copyright 2014 Christopher Lord";
        maintainer = "christopher@lord.ac";
        author = "Christopher Lord";
        homepage = "";
        url = "";
        synopsis = "Very basic interface to the Linux CGroup Virtual Filesystem";
        description = "This library is a prototype. I intend it to grow with time, but please consider making contributions and submitting issues.";
        buildType = "Simple";
      };
      components = {
        "linux-cgroup" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
          ];
        };
      };
    }