{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-wai";
          version = "3.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "http://github.com/iand675/pipes-wai";
        url = "";
        synopsis = "A port of wai-conduit for the pipes ecosystem";
        description = "A light-weight wrapper around Network.Wai to provide easy pipes support.";
        buildType = "Simple";
      };
      components = {
        "pipes-wai" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.pipes
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.blaze-builder
          ];
        };
      };
    }