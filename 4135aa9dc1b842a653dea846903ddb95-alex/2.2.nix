{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "alex";
          version = "2.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Chis Dornan, Simon Marlow";
        maintainer = "Simon Marlow <simonmar@microsoft.com>";
        author = "Chris Dornan and Simon Marlow";
        homepage = "http://www.haskell.org/alex/";
        url = "";
        synopsis = "Alex is a tool for generating lexical analysers in Haskell";
        description = "";
        buildType = "Custom";
      };
      components = {
        exes = {
          "alex" = {
            depends  = [
              hsPkgs.haskell98
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.array
                hsPkgs.containers
                hsPkgs.directory
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }