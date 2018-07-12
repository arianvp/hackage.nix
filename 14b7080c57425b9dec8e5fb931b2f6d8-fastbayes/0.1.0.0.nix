{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fastbayes";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 Melinae, Inc";
        maintainer = "chad.scherrer@gmail.com";
        author = "Chad Scherrer";
        homepage = "https://github.com/cscherrer/fastbayes";
        url = "";
        synopsis = "Bayesian modeling algorithms accelerated for particular model structures";
        description = "General-purpose sampling approaches like Gibbs sampling are very useful for models that have not been studied extensively. But for some cases, specialized algorithms are available because of the model's generality (/e.g./, linear regression) or niche popularity (/e.g./, Latent Dirichlet Allocation). This package is an effort to collect such algorithms in one place.";
        buildType = "Simple";
      };
      components = {
        "fastbayes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.hmatrix
          ];
        };
      };
    }