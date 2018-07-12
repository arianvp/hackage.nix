{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pcd-loader";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Anthony Cowley 2012";
        maintainer = "acowley@gmail.com";
        author = "Anthony Cowley";
        homepage = "";
        url = "";
        synopsis = "PCD file loader.";
        description = "Parser for PCD (point cloud data) formats.  See\n<http://pointclouds.org/documentation/tutorials/pcd_file_format.php>\nfor more information.";
        buildType = "Simple";
      };
      components = {
        "pcd-loader" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.lens
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.linear
          ];
        };
        exes = {
          "pcd2bin" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pcd-loader
            ];
          };
        };
      };
    }