{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "webdriver";
          version = "0.5.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "acurtis@spsu.edu";
        author = "Adam Curtis";
        homepage = "https://github.com/kallisti-dev/hs-webdriver";
        url = "";
        synopsis = "a Haskell client for the Selenium WebDriver protocol";
        description = "A Selenium WebDriver client for Haskell.\nYou can use it to automate browser sessions\nfor testing, system administration, etc.\n\nFor more information about Selenium itself, see\n<http://seleniumhq.org/>\n\nTo find out what's been changed in this version and others,\nsee the change log at\n<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>";
        buildType = "Simple";
      };
      components = {
        "webdriver" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.HTTP
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.zip-archive
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.unordered-containers
            hsPkgs.attoparsec
            hsPkgs.monad-control
            hsPkgs.transformers-base
            hsPkgs.vector
            hsPkgs.lifted-base
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.directory-tree
            hsPkgs.data-default
            hsPkgs.temporary
            hsPkgs.base64-bytestring
            hsPkgs.cond
            hsPkgs.scientific
          ];
        };
        tests = {
          "test-search-baidu" = {
            depends  = [
              hsPkgs.base
              hsPkgs.webdriver
              hsPkgs.text
              hsPkgs.parallel
            ];
          };
        };
      };
    }