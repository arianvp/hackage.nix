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
      specVersion = "1.6";
      identifier = {
        name = "hdigest";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2009 Jamey Sharp";
      maintainer = "Jamey Sharp <jamey@minilop.net>";
      author = "Jamey Sharp";
      homepage = "";
      url = "";
      synopsis = "Server-side HTTP Digest (RFC2617) in the CGI monad";
      description = "For web applications running in a CGI monad container, this module\nprovides a simple interface to generate HTTP Digest authentication\nchallenges and to process the responses from clients. It implements\nRFC2617, but accepts the quirky responses generated by some\nnon-compliant browsers.\n\nThis module was originally implemented for Serialist\n(<http://serialist.net>) and is deployed there in a FastCGI\nenvironment using the fastcgi package. It has been tested against a\nvariety of browsers, including Firefox, Safari, IE, Opera, and others.";
      buildType = "Simple";
    };
    components = {
      "hdigest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.Crypto)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.time)
        ];
      };
    };
  }