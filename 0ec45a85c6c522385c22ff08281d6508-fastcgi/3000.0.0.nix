{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "fastcgi";
          version = "3000.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Bjorn Bringert";
        maintainer = "bjorn@bringert.net";
        author = "Bjorn Bringert";
        homepage = "http://www.cs.chalmers.se/~bringert/darcs/haskell-fastcgi/doc/";
        url = "";
        synopsis = "A Haskell library for writing FastCGI programs";
        description = "This library lets you write FastCGI programs. This package reuses the\ncgi package API, making it very easy to port CGI programs to FastCGI.";
        buildType = "Custom";
      };
      components = {
        "fastcgi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
          ];
          libs = [ pkgs.fcgi ];
        };
      };
    }