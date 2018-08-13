{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.12";
      identifier = {
        name = "olwrapper";
        version = "0.3.7.10";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tomnobleman@gmail.com";
      author = "Thomas Edelmann";
      homepage = "";
      url = "";
      synopsis = "An OpenLayers JavaScript Wrapper and Webframework with snaplet-fay";
      description = "test";
      buildType = "Simple";
    };
    components = {
      "olwrapper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.fay)
          (hsPkgs.fay-text)
          (hsPkgs.fay-jquery)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.snaplet-fay)
          (hsPkgs.snap-loader-static)
        ];
      };
      exes = {
        "olwrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.fay)
            (hsPkgs.fay-text)
            (hsPkgs.fay-jquery)
            (hsPkgs.snap)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.snaplet-fay)
            (hsPkgs.snap-loader-static)
          ] ++ pkgs.lib.optional (_flags.development) (hsPkgs.snap-loader-dynamic);
        };
      };
    };
  }