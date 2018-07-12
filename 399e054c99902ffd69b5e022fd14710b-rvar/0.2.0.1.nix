{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      mtl2 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rvar";
          version = "0.2.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "https://github.com/mokus0/random-fu";
        url = "";
        synopsis = "Random Variables";
        description = "Random number generation based on modeling random\nvariables by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\n\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\n\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.\n\nChanges in 0.2.0.1:  Version bump for transformers\ndependency.";
        buildType = "Simple";
      };
      components = {
        "rvar" = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadPrompt
            hsPkgs.random-source
            hsPkgs.transformers
          ] ++ [ hsPkgs.mtl ];
        };
      };
    }