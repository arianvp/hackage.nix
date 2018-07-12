{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      withconstraints = true;
      withdatakinds = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smtlib2";
          version = "0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "guenther@forsyte.at";
        author = "Henning Günther <guenther@forsyte.at>";
        homepage = "";
        url = "";
        synopsis = "A type-safe interface to communicate with an SMT solver.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "smtlib2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.process
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.atto-lisp
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.data-fix
            hsPkgs.tagged
          ] ++ pkgs.lib.optional _flags.withconstraints hsPkgs.constraints;
        };
      };
    }