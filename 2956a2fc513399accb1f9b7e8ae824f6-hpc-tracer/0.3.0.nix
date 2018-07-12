{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hpc-tracer";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006 Andy Gill, Colin Runciman, (c) 2006-2007 Galois Inc.";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill <andygill@ku.edu>";
        homepage = "http://darcs.unsafePerformIO.com/hpc-tracer";
        url = "";
        synopsis = "Tracer with AJAX interface";
        description = "An incomplete component of the Hpc toolkit which provides the\nability to step through coverage ticks as they happen, giving a\npoor mans debugger.  Requires the binary being traced to be build\nusing a specific version of ghc-6.7, so YMWV.\nThe plan is to port this to the new GHC API, giving both tracing\nand free variable examination via an Ajax interface.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hpc-tracer" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hpc
              hsPkgs.unix
              hsPkgs.parsec
              hsPkgs.haskell98
              hsPkgs.network
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.array
            ];
          };
        };
      };
    }