{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "opengl-dlp-stereo";
          version = "0.1.2.5";
        };
        license = "MIT";
        copyright = "(c) 2015 Brian W Bush";
        maintainer = "Brian W Bush <consult@brianwbush.info>";
        author = "Brian W Bush <consult@brianwbush.info>";
        homepage = "https://bitbucket.org/bwbush/opengl-dlp-stereo";
        url = "https://bitbucket.org/bwbush/opengl-dlp-stereo/downloads/opengl-dlp-stereo-0.1.2.5.tar.gz";
        synopsis = "Library and example for using DLP stereo in OpenGL";
        description = "This package contains functions for rendering 3D stereo using DLP 3-D Ready Sync projectors and active-shutter stereo glasses.  It also includes a sample application (see \\<<https://youtu.be/l3rZbMB2XjM>\\>) and notes regarding hardware setup for DLP.  In particular, note that this technique does not require a graphics card that supports @GL_STEREO@.";
        buildType = "Simple";
      };
      components = {
        "opengl-dlp-stereo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.vector
          ];
        };
        exes = {
          "opengl-dlp-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLUT
              hsPkgs.OpenGL
              hsPkgs.vector
            ];
          };
        };
      };
    }