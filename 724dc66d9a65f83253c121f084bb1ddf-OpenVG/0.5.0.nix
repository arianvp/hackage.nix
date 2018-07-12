{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "OpenVG";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
        maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
        author = "";
        homepage = "http://code.google.com/p/copperbox/";
        url = "";
        synopsis = "OpenVG (ShivaVG-0.2.1) binding";
        description = "A Haskell binding for the OpenVG vector graphics API version\n1.0.1, specifically the ShivaVG-0.2.1 implementation.\n\nThis version (0.5.0) is NOT compatible with the Haskell Platform\n(2009.2.0.2) - it uses the split OpenGL packages (RAW, StateVar,\netc.).\n\n\\*\\* WARNING - major changes to previous version. Also\nsignificant changes likely in next revision. \\*\\*.\n\nChangelog\n0.4.0 to 0.5.0\n\n* Significantly reworked. Changed to use OpenVGRaw.\n\n\n0.3.0 to 0.4.0\n\n* LinearGradient type changed to be Vector4 VGfloat.\n\n* RadialGradient changed to (Vector4 VGfloat, VGfloat).\n\n* Removed Marshal and Unmarshal type classes, marshallBool and\nunmarshalBool moved out of the BasicTypes module.\n\n* Type change for colorRampStops.\n\n* Name change - maxStops changed to maxColorRampStops.\n\n* PathType(..) changed to PathAbsRel(..).\n\n* Substantial changes to Haddock docs.\n\n* Error handling in VGU redone - the original code in\nErrorsInternal was taken wholesale from Sven Panne\\'s\nOpenGL binding to help me bootstrap the OpenVG binding.\nRegrettably I forgot to replace it or attribute it -\nI've now replaced it. Sincere apologies to Sven Panne.";
        buildType = "Simple";
      };
      components = {
        "OpenVG" = {
          depends  = [
            hsPkgs.base
            hsPkgs.OpenGL
            hsPkgs.GLUT
            hsPkgs.OpenGLRaw
            hsPkgs.StateVar
            hsPkgs.Tensor
            hsPkgs.OpenVGRaw
          ];
        };
      };
    }