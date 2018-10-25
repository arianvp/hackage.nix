{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      support_bytestring = true;
      support_foundation = true;
      support_basement = true;
      support_deepseq = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "memory";
        version = "0.14.17";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "vincent@snarc.org, Nicolas Di Prima <nicolas@primetype.co.uk>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/hs-memory";
      url = "";
      synopsis = "memory and related abstraction stuff";
      description = "Chunk of memory, polymorphic byte array management and manipulation\n\n* A polymorphic byte array abstraction and function similar to strict ByteString.\n\n* Different type of byte array abstraction.\n\n* Raw memory IO operations (memory set, memory copy, ..)\n\n* Aliasing with endianness support.\n\n* Encoding : Base16, Base32, Base64.\n\n* Hashing : FNV, SipHash";
      buildType = "Simple";
    };
    components = {
      "memory" = {
        depends  = (((if compiler.isGhc && compiler.version.lt "8.0"
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
          ]) ++ pkgs.lib.optional (_flags.support_bytestring) (hsPkgs.bytestring)) ++ pkgs.lib.optional (_flags.support_deepseq) (hsPkgs.deepseq)) ++ pkgs.lib.optional (_flags.support_foundation || _flags.support_basement) (hsPkgs.basement);
      };
      tests = {
        "test-memory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.memory)
            (hsPkgs.basement)
            (hsPkgs.foundation)
          ];
        };
      };
    };
  }