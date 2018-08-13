{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-bytestring = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "http-conduit";
        version = "1.9.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/http-conduit";
      url = "";
      synopsis = "HTTP client package with conduit interface and HTTPS support.";
      description = "This package uses conduit for parsing the actual contents of the HTTP connection. It also provides higher-level functions which allow you to avoid directly dealing with streaming data. See <http://www.yesodweb.com/book/http-conduit> for more information.\n\nThe @Network.HTTP.Conduit.Browser@ module has been moved to <http://hackage.haskell.org/package/http-conduit-browser/>";
      buildType = "Simple";
    };
    components = {
      "http-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.failure)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.zlib-conduit)
          (hsPkgs.blaze-builder-conduit)
          (hsPkgs.utf8-string)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.cprng-aes)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.certificate)
          (hsPkgs.case-insensitive)
          (hsPkgs.base64-bytestring)
          (hsPkgs.asn1-data)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.socks)
          (hsPkgs.time)
          (hsPkgs.cookie)
          (hsPkgs.void)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.publicsuffixlist)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.filepath)
        ] ++ (if _flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [ (hsPkgs.network) ]);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.failure)
            (hsPkgs.conduit)
            (hsPkgs.zlib-conduit)
            (hsPkgs.blaze-builder-conduit)
            (hsPkgs.utf8-string)
            (hsPkgs.blaze-builder)
            (hsPkgs.http-types)
            (hsPkgs.cprng-aes)
            (hsPkgs.tls)
            (hsPkgs.tls-extra)
            (hsPkgs.monad-control)
            (hsPkgs.containers)
            (hsPkgs.certificate)
            (hsPkgs.case-insensitive)
            (hsPkgs.base64-bytestring)
            (hsPkgs.asn1-data)
            (hsPkgs.data-default)
            (hsPkgs.text)
            (hsPkgs.transformers-base)
            (hsPkgs.lifted-base)
            (hsPkgs.time)
            (hsPkgs.network)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.socks)
            (hsPkgs.http-types)
            (hsPkgs.cookie)
            (hsPkgs.regex-compat)
            (hsPkgs.network-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.void)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.publicsuffixlist)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.filepath)
            (hsPkgs.mime-types)
          ];
        };
      };
    };
  }