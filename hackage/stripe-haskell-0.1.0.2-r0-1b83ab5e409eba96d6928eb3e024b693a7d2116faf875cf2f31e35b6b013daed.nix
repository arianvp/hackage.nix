{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stripe-haskell";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 David M. Johnson";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "https://github.com/dmjio/stripe-haskell";
      url = "";
      synopsis = "Stripe API for Haskell";
      description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[100% Stripe API Coverage:]\n(<https://stripe.com/docs/api>) All Stripe commands are supported,\nincluding but not limited to Charges, Refunds, Customers, Cards,\nSubscriptions, Plans, Coupons, Discounts, Invoices, Invoice Items,\nDisputes, Transfers, Recipients, Application Fees, Application Fee Refunds,\nAccount, Balance, Events and Tokens\n\n[100+ Hspec Tests:] Thoroughly unit-tested with hspec.\nAll API commands are unit-tested before inclusion into the API (see the tests directory).\nTo run the tests, perform the following:\n\n>  cabal clean && cabal configure --enable-tests && cabal build tests && dist/build/tests/tests\n\n[Pagination:] Pagination is possible on all API calls that return a JSON array.\n(<https://stripe.com/docs/api#pagination>)\nAny API call that returns a `StripeList` is eligible for pagination.\nTo use in practice do the following:\n\n> import Web.Stripe\n> import Web.Stripe.Customer\n>\n> main :: IO ()\n> main = do\n>   let config = StripeConfig \"secret key\"\n>   result <- stripe config \$ getCustomers\n>                                  (Just 30 :: Maybe Limit) -- Defaults to 10 if Nothing, 100 is Max\n>                                  (StartingAfter \$ CustomerId \"customer_id0\")\n>                                  (EndingBefore \$ CustomerId \"customer_id30\")\n>   case result of\n>     Right stripelist -> print (list stripelist :: [Customer])\n>     Left stripeError -> print stripeError\n>\n\n[Versioning:] All versioning is hard-coded (for safety)\n(<https://stripe.com/docs/api#versioning>)\nStripe API versions specified in the HTTP headers of Stripe requests take precedence\nover the API version specified in your Stripe Dashboard. In an attempt to ensure\nAPI consistency and correct parsing of returned JSON, all Stripe versions are hard-coded, and\ninaccessible to the end-users of this library. When a new Stripe API version is released\nthis library will increment the hard-coded API version.\n\n[Expansion:] Object expansion is supported on Stripe objects eligible for expansion though the `ExpandParams` type\n(<https://stripe.com/docs/api#expansion>)\nObject expansion allows normal Stripe API calls to return expanded objects inside of other objects.\nFor example, a `Customer` object contains a Card ID hash on the default_card field.\nThis default_card hash can be expanded into a full `Card` object inside a `Customer` object.\nAs an example:\n\n> import Web.Stripe\n> import Web.Stripe.Customer\n>\n> main :: IO ()\n> main = do\n>   let config = StripeConfig \"secret key\"\n>   result <- stripe config \$ getCustomerExpandable\n>                                  (CustomerId \"customerid\")\n>                                  ([\"default_card\"] :: ExpandParams)\n>   case result of\n>     Right customer -> print (defaultCard customer) -- Will be an `ExpandedCard`\n>     Left stripeError -> print stripeError\n>\n\n[MetaData:] Stripe objects allow the embedding of arbitrary metadata\n(<https://stripe.com/docs/api#metadata>)\nAny Stripe object that supports the embedding of metadata is available via this API.\nAs an example:\n\n> import Web.Stripe\n> import Web.Stripe.Coupon\n>\n> main :: IO ()\n> main = do\n>   let config = StripeConfig \"secret key\"\n>   result <- stripe config \$ updateCoupon (CouponId \"couponid\") [(\"key1\", value2\"), (\"key2\", \"value2\")]\n>   case result of\n>     Right coupon -> print \$ couponMetaData coupon\n>     Left stripeError -> print stripeError\n\n[Issues:] Any API recommendations or bugs can be reported here: (<https://github.com/dmjio/stripe-haskell/issues>)\nPull requests welcome!\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.hspec)
          (hsPkgs.http-streams)
          (hsPkgs.io-streams)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.HsOpenSSL)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.either)
            (hsPkgs.hspec)
            (hsPkgs.http-streams)
            (hsPkgs.io-streams)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.stripe-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }