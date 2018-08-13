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
        name = "exceptional";
        version = "0.1.1.0";
      };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2015, Peter Harpending.";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/exceptional";
      url = "";
      synopsis = "A type for pure code that can fail.";
      description = "This is a very simple type:\n\n> data Exceptional x\n>   = Failure String\n>   | Success x\n\nIt's much like @Maybe@, except instead of @Nothing@, we have @Failure\nString@.\n\nA comparison could also be made to @Either String@. I made this library\nbecause I was dissatisfied with the @Monad@ instance for @Either@. In this\ntype, @fail = Failure@. It's rather simple.\n\n**Changes**\n\n[0.1.1.0] Add @runExceptional@ function.\n\n[0.1.0.1] Minor documentation changes. No changes to the API.\n\n[0.1.0.0] Initial version";
      buildType = "Simple";
    };
    components = {
      "exceptional" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }