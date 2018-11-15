{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "statistics";
        version = "0.10.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009, 2010, 2011 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/statistics";
      url = "";
      synopsis = "A library of statistical types, data, and functions";
      description = "This library provides a number of common functions and types useful\nin statistics.  We focus on high performance, numerical robustness,\nand use of good algorithms.  Where possible, we provide\nreferences to the statistical literature.\n\nThe library's facilities can be divided into four broad categories:\n\n* Working with widely used discrete and continuous probability\ndistributions.  (There are dozens of exotic distributions in use;\nwe focus on the most common.)\n\n* Computing with sample data: quantile estimation, kernel density\nestimation, histograms, bootstrap methods, significance testing,\nand autocorrelation analysis.\n\n* Random variate generation under several different distributions.\n\n* Common statistical tests for significant differences between\nsamples.\n\nChanges in 0.10.4.0\n\n* Support for versions of GHC older than 7.2 is discontinued.\n\n* All datatypes now support 'Data.Binary' and 'GHC.Generics'.\n\nChanges in 0.10.3.0\n\n* Bug fixes\n\nChanges in 0.10.2.0\n\n* Bugs in DCT and IDCT are fixed.\n\n* Accesors for uniform distribution are added.\n\n* 'ContGen' instances for all continous distribtuions are added.\n\n* Beta distribution is added.\n\n* Constructor for improper gamma distribtuion is added.\n\n* Binomial distribution allows zero trials.\n\n* Poisson distribution now accept zero parameter.\n\n* Integer overflow in caculation of Wilcoxon-T test is fixed.\n\n* Bug in 'ContGen' instance for normal distribution is fixed.\n\nChanges in 0.10.1.0\n\n* Kolmogorov-Smirnov nonparametric test added.\n\n* Pearson's chi squared test added.\n\n* Type class for generating random variates for given distribution\nis added.\n\n* Modules 'Statistics.Math' and 'Statistics.Constants' are moved to\nthe @math-functions@ package. They are still available but marked\nas deprecated.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.erf)
          (hsPkgs.monad-par)
          (hsPkgs.mwc-random)
          (hsPkgs.math-functions)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.vector-algorithms)
          (hsPkgs.vector-binary-instances)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ieee754)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.math-functions)
            (hsPkgs.mwc-random)
            (hsPkgs.statistics)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
            (hsPkgs.erf)
          ];
        };
      };
    };
  }