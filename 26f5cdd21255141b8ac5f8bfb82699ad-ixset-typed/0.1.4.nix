{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ixset-typed";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andres Löh <andres@well-typed.com>";
        author = "Andres Löh, Happstack team, HAppS LLC";
        homepage = "";
        url = "";
        synopsis = "Efficient relational queries on Haskell sets.";
        description = "This Haskell package provides a data structure of sets that are indexed\nby potentially multiple indices.\n\nSets can be created, modified, and queried in various ways.\n\nThe package is a variant of the <https://hackage.haskell.org/package/ixset ixset>\npackage. The ixset package makes use\nof run-time type information to find a suitable index on a query, resulting\nin possible run-time errors when no suitable index exists. In ixset-typed,\nthe types of all indices available or tracked in the type system.\nThus, ixset-typed should be safer to use than ixset, but in turn requires\nmore GHC extensions.\n\nAt the moment, the two packages are relatively compatible. As a consequence\nof the more precise types, a few manual tweaks are necessary when switching\nfrom one to the other, but the interface is mostly the same.";
        buildType = "Simple";
      };
      components = {
        "ixset-typed" = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.safecopy
            hsPkgs.template-haskell
          ];
        };
      };
    }