{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hw-fingertree";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006 Ross Paterson, Ralf Hinze";
        maintainer = "Ross Paterson <R.Paterson@city.ac.uk>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Generic finger-tree structure, with example instances";
        description = "A general sequence representation with arbitrary\nannotations, for use as a base for implementations of\nvarious collection types, with examples, as described\nin section 4 of\n\n* Ralf Hinze and Ross Paterson,\n\\\"Finger trees: a simple general-purpose data structure\\\",\n/Journal of Functional Programming/ 16:2 (2006) pp 197-217.\n<http://staff.city.ac.uk/~ross/papers/FingerTree.html>\n\nFor a tuned sequence type, see @Data.Sequence@ in the\n@containers@ package, which is a specialization of\nthis structure.";
        buildType = "Simple";
      };
      components = {
        "hw-fingertree" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          "ft-properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }