{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mysql-simple";
          version = "0.4.5";
        };
        license = "BSD-3-Clause";
        copyright = "2011 MailRank, Inc.";
        maintainer = "Paul Rouse <pyr@doynton.org>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/paul-rouse/mysql-simple";
        url = "";
        synopsis = "A mid-level MySQL client library.";
        description = "A mid-level client library for the MySQL database, intended to be\nfast and easy to use.\n\n/Important licensing note/: This library is BSD-licensed under the\nterms of the MySQL FOSS License Exception\n<http://www.mysql.com/about/legal/licensing/foss-exception/>.\n\nSince this library links against the GPL-licensed @mysqlclient@\nlibrary, a non-open-source application that uses it /may/ be\nsubject to the terms of the GPL.";
        buildType = "Simple";
      };
      components = {
        "mysql-simple" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mysql
            hsPkgs.pcre-light
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) hsPkgs.semigroups;
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.hspec
              hsPkgs.mysql-simple
              hsPkgs.text
            ];
          };
        };
      };
    }