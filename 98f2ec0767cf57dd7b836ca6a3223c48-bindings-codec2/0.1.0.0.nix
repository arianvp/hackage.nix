{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-codec2";
          version = "0.1.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "(C) 2014 Ricky Elrod";
        maintainer = "ricky@elrod.me";
        author = "Ricky Elrod";
        homepage = "https://github.com/relrod/Codec2-hs";
        url = "";
        synopsis = "Very low-level FFI bindings for Codec2";
        description = "Bindings for Codec2 generated by jwiegley's c2hsc/bindings-dsl";
        buildType = "Simple";
      };
      components = {
        "bindings-codec2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs.codec2 ];
        };
      };
    }