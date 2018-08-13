{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
      hpc = false;
      nolib = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "concurrent-extra";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Bas van Dijk & Roel van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <vandijk.roel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Extra concurrency primitives";
      description = "Offers a selection of synchronization primitives:\n\n* Lock: Enforce exclusive access to a resource. Also known as a\nbinary semaphore.\n\n* RLock: A lock which can be acquired multiple times by the same\nthread. Also known as a reentrant mutex.\n\n* Event: Wake multiple threads by signaling an event.\n\n* ReadWriteLock: Multiple-reader, single-writer locks. Used to\nprotect shared resources which may be concurrently read, but only\nsequentially written.\n\n* ReadWriteVar: Concurrent read, sequential write variables.\n\nPlease consult the API documentation of the individual modules for\nmore detailed information.\n\nInspired by the concurrency libraries of Java and Python.";
      buildType = "Custom";
    };
    components = {
      "concurrent-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.stm)
        ];
      };
      exes = {
        "test-concurrent-extra" = {
          depends  = pkgs.lib.optionals (_flags.test) [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }