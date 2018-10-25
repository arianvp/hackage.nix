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
      specVersion = "1.10";
      identifier = {
        name = "ftp-client-conduit";
        version = "0.5.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrobinson7627@gmail.com";
      author = "Megan Robinson";
      homepage = "https://github.com/mr/ftp-client";
      url = "";
      synopsis = "Transfer file with FTP and FTPS with Conduit";
      description = "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS. ftp-client-conduit uses conduit to stream files and data in constant space.";
      buildType = "Simple";
    };
    components = {
      "ftp-client-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ftp-client)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.resourcet)
          (hsPkgs.connection)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "ftp-conduit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ftp-clientconduit)
          ];
        };
      };
    };
  }