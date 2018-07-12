{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "distributed-static";
          version = "0.3.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Well-Typed LLP";
        maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
        author = "Edsko de Vries";
        homepage = "http://haskell-distributed.github.com";
        url = "";
        synopsis = "Compositional, type-safe, polymorphic static values and closures";
        description = "/Towards Haskell in the Cloud/ (Epstein et al, Haskell\nSymposium 2011) introduces the concept of /static/ values:\nvalues that are known at compile time. In a distributed\nsetting where all nodes are running the same executable,\nstatic values can be serialized simply by transmitting a\ncode pointer to the value. This however requires special\ncompiler support, which is not yet available in ghc. We\ncan mimick the behaviour by keeping an explicit mapping\n('RemoteTable') from labels to values (and making sure\nthat all distributed nodes are using the same\n'RemoteTable'). In this module we implement this mimickry\nand various extensions: type safety (including for\npolymorphic static values) and compositionality.";
        buildType = "Simple";
      };
      components = {
        "distributed-static" = {
          depends  = [
            hsPkgs.base
            hsPkgs.rank1dynamic
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.deepseq
          ];
        };
      };
    }