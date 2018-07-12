{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "string-class";
          version = "0.1.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2010 Byron James Johnson";
        maintainer = "ByronJohnsonFP@gmail.com, Kostiantyn Rybnikov <k-bx@k-bx.com>";
        author = "Byron James Johnson";
        homepage = "https://github.com/string-class/string-class";
        url = "";
        synopsis = "String class library";
        description = "String class library.";
        buildType = "Simple";
      };
      components = {
        "string-class" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.tagged
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
      };
    }