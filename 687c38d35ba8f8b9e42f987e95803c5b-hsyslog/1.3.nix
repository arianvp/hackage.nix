{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hsyslog";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons <simons@cryp.to>";
        homepage = "http://cryp.to/hsyslog/";
        url = "";
        synopsis = "FFI interface to syslog(3) from POSIX.1-2001.";
        description = "FFI interface to syslog(3) from POSIX.1-2001.";
        buildType = "Simple";
      };
      components = {
        "hsyslog" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }