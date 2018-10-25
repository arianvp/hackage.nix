{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      demos = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Frames";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2015 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Data frames For working with tabular data files";
      description = "User-friendly, type safe, runtime efficient tooling for\nworking with tabular data deserialized from\ncomma-separated values (CSV) files. The type of\neach row of data is inferred from data, which can\nthen be streamed from disk, or worked with in\nmemory.";
      buildType = "Simple";
    };
    components = {
      "Frames" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.readable)
          (hsPkgs.pipes)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.pipes-group)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-safe)
          (hsPkgs.bytestring)
          (hsPkgs.vinyl)
          (hsPkgs.discrimination)
          (hsPkgs.contravariant)
          (hsPkgs.hashable)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.vector-th-unbox)
        ];
      };
      exes = {
        "getdata" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.zip-archive)
            (hsPkgs.directory)
          ];
        };
        "plot" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.microlens)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
            (hsPkgs.Chart)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.diagrams-lib)
            (hsPkgs.readable)
            (hsPkgs.containers)
            (hsPkgs.statistics)
          ];
        };
        "plot2" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.microlens)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.pipes)
            (hsPkgs.Chart)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.diagrams-lib)
            (hsPkgs.readable)
            (hsPkgs.containers)
            (hsPkgs.statistics)
          ];
        };
        "demo" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.list-t)
            (hsPkgs.microlens)
            (hsPkgs.transformers)
            (hsPkgs.Frames)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.ghc-prim)
            (hsPkgs.readable)
            (hsPkgs.pipes)
          ];
        };
        "tutorial" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.microlens)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.template-haskell)
            (hsPkgs.readable)
            (hsPkgs.foldl)
            (hsPkgs.pipes)
            (hsPkgs.vinyl)
          ];
        };
        "benchdemo" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.foldl)
            (hsPkgs.pipes)
          ];
        };
        "missing" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.vinyl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-safe)
          ];
        };
        "kata04" = {
          depends  = pkgs.lib.optionals (_flags.demos) [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.vinyl)
            (hsPkgs.text)
            (hsPkgs.readable)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.Frames)
            (hsPkgs.template-haskell)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.htoml)
            (hsPkgs.regex-applicative)
            (hsPkgs.pretty)
            (hsPkgs.unordered-containers)
            (hsPkgs.pipes)
            (hsPkgs.HUnit)
            (hsPkgs.vinyl)
            (hsPkgs.foldl)
            (hsPkgs.attoparsec)
            (hsPkgs.lens)
          ];
        };
        "overlap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Frames)
          ];
        };
        "mpg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Frames)
          ];
        };
      };
      benchmarks = {
        "joins" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Frames)
            (hsPkgs.criterion)
          ];
        };
        "insurance" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.Frames)
            (hsPkgs.transformers)
            (hsPkgs.pipes)
          ];
        };
      };
    };
  }