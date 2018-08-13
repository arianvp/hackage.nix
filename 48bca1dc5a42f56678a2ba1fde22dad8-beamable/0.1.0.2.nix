{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "beamable";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "manpacket@gmail.com";
      author = "Michael Baikov";
      homepage = "";
      url = "";
      synopsis = "Generic serializer/deserializer with compact representation";
      description = "Yet another binary serialization library.  Beamable\nprovides efficient and fast serialization, often requiring less\nspace than alternative serializers.\nIncremental de-serialization is supported.";
      buildType = "Simple";
    };
    components = {
      "beamable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
          (hsPkgs.murmur-hash)
        ];
      };
      tests = {
        "beamable-tests" = {
          depends  = [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.integer-gmp)
            (hsPkgs.murmur-hash)
          ];
        };
      };
      benchmarks = {
        "beamable-bench" = {
          depends  = [
            (hsPkgs.criterion)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.integer-gmp)
            (hsPkgs.murmur-hash)
          ];
        };
      };
    };
  }