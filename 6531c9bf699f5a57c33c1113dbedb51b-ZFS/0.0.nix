{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ZFS";
          version = "0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Gwern Branwen <gwern0@gmail.com";
        author = "Amr Sabry, R. Kent Dybvig, Simon L. Peyton Jones, Oleg Kiselyov";
        homepage = "";
        url = "";
        synopsis = "Oleg's Zipper FS";
        description = "A implementation of a zipper filesystem using delimited continuations.\nZipper-based File/Operating system\nwith threading and exceptions all realized via delimited continuations.\nThere are no unsafe operations, no GHC (let alone) Unix threads,\nno concurrency problems. Our threads can't even do IO and can't\nmutate any global state -- and the type system sees to it.";
        buildType = "Simple";
      };
      components = {
        "ZFS" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.CC-delcont
          ];
        };
      };
    }