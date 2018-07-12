{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "pointedlist";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeffwheeler@gmail.com";
        author = "Jeff Wheeler";
        homepage = "";
        url = "";
        synopsis = "A zipper-like comonad which works as a list, tracking a position.";
        description = "A PointedList tracks the position in a non-empty list which works similarly\nto a zipper. A current item is always required, and therefore the list may\nnever be empty.\nA circular PointedList wraps around to the other end when progressing past\nthe actual edge.";
        buildType = "Custom";
      };
      components = {
        "pointedlist" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.data-accessor
          ];
        };
      };
    }