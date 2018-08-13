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
        name = "dnssd";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "https://github.com/maxpow4h/dnssd";
      url = "";
      synopsis = "DNS service discovery bindings";
      description = "dnssd provides Haskell bindings to Multicast DNS (mDNS) and DNS\nService Discovery (DNS-SD). Also known as Bonjour or Avahi.";
      buildType = "Simple";
    };
    components = {
      "dnssd" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
        libs = pkgs.lib.optional (!system.isOsx) (pkgs.dns_sd);
      };
    };
  }