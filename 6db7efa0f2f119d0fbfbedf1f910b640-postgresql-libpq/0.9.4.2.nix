{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      use-pkg-config = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "postgresql-libpq";
        version = "0.9.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Grant Monroe\n(c) 2011 Leon P Smith";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Grant Monroe, Leon P Smith, Joey Adams";
      homepage = "https://github.com/phadej/postgresql-libpq";
      url = "";
      synopsis = "low-level binding to libpq";
      description = "This is a binding to libpq: the C application\nprogrammer's interface to PostgreSQL. libpq is a\nset of library functions that allow client\nprograms to pass queries to the PostgreSQL\nbackend server and to receive the results of\nthese queries.";
      buildType = "Custom";
    };
    components = {
      "postgresql-libpq" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        libs = pkgs.lib.optionals (!_flags.use-pkg-config) (if system.isWindows
          then [ (pkgs."libpq") ]
          else [
            (pkgs."pq")
          ] ++ pkgs.lib.optionals (system.isOpenbsd) [
            (pkgs."crypto")
            (pkgs."ssl")
          ]);
        pkgconfig = pkgs.lib.optional (_flags.use-pkg-config) (pkgconfPkgs.libpq);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "smoke" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.postgresql-libpq)
          ];
        };
      };
    };
  }