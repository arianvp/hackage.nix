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
      specVersion = "1.10";
      identifier = {
        name = "google-maps-geocoding";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Mike Pilgrem";
      maintainer = "public@pilgrem.com";
      author = "Mike Pilgrem";
      homepage = "https://github.com/mpilgrem/google-maps-geocoding#readme";
      url = "";
      synopsis = "Google Maps Geocoding API bindings";
      description = "The Google Maps Geocoding API provides a direct way to\naccess geocoding and reverse geocoding services via an HTTP\nrequest. This library package provides bindings in Haskell\nto that API. NB: The use of the API's services is subject\nto the Google Maps APIs Terms of Service, which terms\nrestrict the use of content (eg no use without a Google\nmap).";
      buildType = "Simple";
    };
    components = {
      "google-maps-geocoding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
        ];
      };
    };
  }