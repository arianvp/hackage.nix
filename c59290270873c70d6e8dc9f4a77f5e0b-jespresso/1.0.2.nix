{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "jespresso";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2015 Stevens Institute of Technology";
        maintainer = "Andrey Chudnov <oss@chudnov.com>";
        author = "Andrey Chudnov";
        homepage = "http://github.com/achudnov/jespresso";
        url = "";
        synopsis = "Extract all JavaScript from an HTML page and consolidate it in one script.";
        description = "Allows extraction and consolidation of JavaScript code in an HTML page so that it behaves like the original. Consolidation is a process of transforming an HTML page into an equivalent, but containing JavaScript code only in one inlined script tag. Note that the package versions follow Semantic Versioning model (semver.org).";
        buildType = "Simple";
      };
      components = {
        "jespresso" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.hxt-tagsoup
            hsPkgs.arrows
            hsPkgs.HTTP
            hsPkgs.language-ecmascript
            hsPkgs.random
            hsPkgs.bytestring
            hsPkgs.http-encodings
            hsPkgs.network
            hsPkgs.network-uri
            hsPkgs.data-default-class
            hsPkgs.data-default-instances-base
          ];
        };
        exes = {
          "jespresso" = {
            depends  = [
              hsPkgs.base
              hsPkgs.jespresso
              hsPkgs.cmdargs
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.network-uri
            ];
          };
        };
        tests = {
          "unittest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.jespresso
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hxt
              hsPkgs.arrows
              hsPkgs.transformers
              hsPkgs.Diff
            ];
          };
        };
      };
    }