{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ircbot = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tersmu";
          version = "0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "mbays@sdf.org";
        author = "Martin Bays";
        homepage = "http://mbays.freeshell.org/tersmu";
        url = "";
        synopsis = "A semantic parser for lojban";
        description = "A semantic parser for the engineered human language Lojban\n(www.lojban.org). It translates lojban text to a predicate logic.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tersmu" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.syb
            ];
          };
          "tersmuBot" = {
            depends  = pkgs.lib.optionals _flags.ircbot [
              hsPkgs.base
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.syb
            ];
          };
        };
      };
    }