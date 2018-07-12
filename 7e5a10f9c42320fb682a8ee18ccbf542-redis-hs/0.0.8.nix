{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "redis-hs";
          version = "0.0.8";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Will Langstroth <will@langstroth.com>";
        author = "Will Langstroth <will@langstroth.com>";
        homepage = "http://github.com/wlangstroth/redis-hs";
        url = "";
        synopsis = "A simple Redis library for Haskell";
        description = "This package provides access to Redis stores using the Data.ByteString.UTF8\nByteString, for consistent handling of UTF8 encoding. It is a developer pre-\nrelease, and so lacks many of the features of the existing `redis` package\n(like a monad wrapper, state management, and custom concurrency management)\nbut for light use, this library makes using Redis very straightforward.\n\nThe feature set is incomplete, and version 1.0.0 will be tagged only when the\nlibrary has full command coverage, reasonable test coverage, and solid\ndocumentation.";
        buildType = "Simple";
      };
      components = {
        "redis-hs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.utf8-string
          ];
        };
      };
    }