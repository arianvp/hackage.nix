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
        name = "turtle";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Shell programming, Haskell-style";
      description = "@turtle@ is a reimplementation of the Unix command line environment\nin Haskell so that you can use Haskell as both a shell and a scripting\nlanguage\n\nFeatures include:\n\n* Batteries included: Command an extended suite of predefined utilities\n\n* Interoperability: You can still run external shell commands\n\n* Portability: Works on Windows, OS X, and Linux\n\n* Exception safety: Safely acquire and release resources\n\n* Streaming: Transform or fold command output in constant space\n\n* Patterns: Use typed regular expressions that can parse structured values\n\n* Formatting: Type-safe @printf@-style text formatting\n\n* Modern: Supports @text@ and @system-filepath@\n\nRead \"Turtle.Tutorial\" for a detailed tutorial or \"Turtle.Prelude\" for a\nquick-start guide";
      buildType = "Simple";
    };
    components = {
      "turtle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.clock)
          (hsPkgs.directory)
          (hsPkgs.foldl)
          (hsPkgs.managed)
          (hsPkgs.process)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }