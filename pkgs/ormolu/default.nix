{ pkgs }:
let
  src = pkgs.fetchFromGitHub {
    owner = "tweag";
    repo = "ormolu";
    rev = "3abadaefa5e190ff346f9aeb309465ac890495c2";
    sha256 = "0vqrb12bsp1dczff3i5pajzhjwz035rxg8vznrgj5p6j7mb2vcnd";
  };
  ormolu = pkgs.callPackage src { };
in ormolu.ormolu
