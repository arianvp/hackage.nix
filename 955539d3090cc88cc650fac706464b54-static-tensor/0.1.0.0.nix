{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "static-tensor";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Alexey Vagarenko";
        maintainer = "vagarenko@gmail.com";
        author = "Alexey Vagarenko";
        homepage = "https://github.com/vagarenko/static-tensor";
        url = "";
        synopsis = "Tensors of statically known size";
        description = "This library provides a toolkit for working with tensors of statically known size and element's type.\nSee README.md";
        buildType = "Simple";
      };
      components = {
        "static-tensor" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.lens
            hsPkgs.mono-traversable
            hsPkgs.singletons
            hsPkgs.split
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "coreDump" = {
            depends  = [
              hsPkgs.base
              hsPkgs.static-tensor
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.text
              hsPkgs.typed-process
              hsPkgs.Diff
            ];
          };
        };
        benchmarks = {
          "matMul" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.linear
              hsPkgs.mwc-random
              hsPkgs.static-tensor
              hsPkgs.vector
            ];
          };
        };
      };
    }