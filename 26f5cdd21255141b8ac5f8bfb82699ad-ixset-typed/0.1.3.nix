{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ixset-typed";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andres Löh <andres@well-typed.com>";
        author = "Andres Löh, Happstack team, HAppS LLC";
        homepage = "";
        url = "";
        synopsis = "Efficient relational queries on Haskell sets.";
        description = "Create and query sets that are indexed by multiple indices.\n\nThis is a variant of the ixset package that tracks the index\ninformation via the type system. It should be safer to use than\nixset, but also requires more GHC extensions.\n\nThe two packages are currently relatively compatible. Switching\nfrom one to the other requires a little bit of manual work, but\nnot very much.";
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