{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nested-routes";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Declarative, compositional Wai responses";
        description = "A method to writing Wai responses\n\nThis library attempts to make it easier to write nice Wai response handlers\nby giving us a Sinatra/\n<https://hackage.haskell.org/package/scotty Scotty>-like syntax for declaring HTTP-verb oriented\nroutes, in addition to file-extension handling and rose-tree like composition.\nNot only do we have literal route specification, like\n<https://hackage.haskell.org/package/scotty Scotty> &\n<https://hackage.haskell.org/package/spock Spock>, but we\ncan also embed\n<https://hackage.haskell.org/package/attoparsec Attoparsec>\nparsers /directly/ in our routes, with our handlers\nreflecting their results. As an example:\n\n> router :: Application\n> router = route handlers\n>   where\n>     handlers = do\n>       handle o\n>         (get \$ text \"home\")\n>         Nothing\n>       handle (\"foo\" </> \"bar\")\n>         (get \$ text \"foobar\") \$ Just \$\n>         handle (p (\"baz\", double) </> o)\n>           (\\d -> get \$ text \$ LT.pack (show d) <> \" bazs\")\n>           Nothing\n>       handle (p (\"num\",double) </> o)\n>         (\\d -> get \$ text \$ LT.pack \$ show d) \$ Just \$ do\n>         handle \"bar\"\n>            (\\d -> get \$ do\n>                     text \$ (LT.pack \$ show d) <> \" bars\")\n>                     json \$ (LT.pack \$ show d) <> \" bars!\")\n>            Nothing\n>         handle (r (\"email\", mkRegex \"(^[-a-zA-Z0-9_.]+@[-a-zA-Z0-9]+\\\\.[-a-zA-Z0-9.]+\$)\") </> o)\n>            (\\d e -> get \$ textOnly \$ (LT.pack \$ show d) <> \" \" <> (LT.pack \$ show e)\n\nThe route specification syntax is a little strange right now - @l@ specifies\na \"literal chunk\" of a handlable url (ie - @l \\\"foo\\\" \\<\\/\\> l \\\"bar\\\" \\<\\/\\> o@ would\nrepresent the url @\\/foo\\/bar@), while @p@ represents a \"parsable\" url chunk,\nwhich expects a pair - the left element being merely a reference name for the\nparser during internal plumbing, and the right being the actual @Parser@. @o@ represents\nthe end of a url string, and can be used alone in a handler to capture requests\nto the root path.\n\nEach route being handled needs some kind of content. For every parsed url chunk,\nthe route expects a function\nof arity matching 1-for-1 with the parsed contents. For example, @\\d -> ...@ in the\ndemonstration above is such a function, where @d :: Double@.\n\nInternally, we match against both the file extension and Accept headers in the\nHTTP request - the Accept header may override the file extension.\n\nWhen we test our application:\n\n>  λ> curl localhost:3000/ -H \"Accept: text/plain, */*\"\n>  ↪ \"home\"\n\nrequests may end with index\n\n>  λ> curl localhost:3000/index -H \"Accept: text/plain, */*\"\n>  ↪ \"home\"\n\nand specify the file extension\n\n>  λ> curl localhost:3000/index.txt -H \"Accept: text/plain, */*\"\n>  ↪ \"home\"\n\neach responding with the \"closest\" available file type\n\n>  λ> curl localhost:3000/index.html -H \"Accept: text/html, */*\"\n>  ↪ \"home\"\n\n>  λ> curl localhost:3000/foo/bar -H \"Accept: text/plain, */*\"\n>  ↪ \"foobar\"\n\n>  λ> curl localhost:3000/foo/bar.txt -H \"Accept: text/plain, */*\"\n>  ↪ \"foobar\"\n\n>  λ> curl localhost:3000/foo/bar/5678.5678 -H \"Accept: text/plain, */*\"\n>  ↪ \"5678.5678 bazs\"\n\n>  λ> curl localhost:3000/1234.1234 -H \"Accept: text/plain, */*\"\n>  ↪ \"1234.1234\"\n\n>  λ> curl localhost:3000/2e5 -H \"Accept: text/plain, */*\"\n>  ↪ \"200000.0\"\n\n>  λ> curl localhost:3000/1234.1234/bar -H \"Accept: text/plain, */*\"\n>  ↪ \"1234.1234 bars\"";
        buildType = "Simple";
      };
      components = {
        "nested-routes" = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.wai-util
            hsPkgs.http-types
            hsPkgs.http-media
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.witherable
            hsPkgs.composition
            hsPkgs.semigroups
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.blaze-html
            hsPkgs.lucid
            hsPkgs.shakespeare
            hsPkgs.clay
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.regex-compat
            hsPkgs.pred-trie
            hsPkgs.poly-arity
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }