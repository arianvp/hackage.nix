{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bytestring-progress";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Wick <awick@uhsure.com>";
        author = "Adam Wick <awick@uhsure.com>";
        homepage = "http://github.com/acw/bytestring-progress";
        url = "";
        synopsis = "A library for tracking the consumption of a lazy ByteString";
        description = "In some cases, it is useful to know how fast a ByteString is being\nconsumed. Typically, this could be to report some measure of progress\nto a waiting user, but it could also be to perform some form of testing\non input / consumption code.";
        buildType = "Simple";
      };
      components = {
        "bytestring-progress" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
          ];
        };
      };
    }