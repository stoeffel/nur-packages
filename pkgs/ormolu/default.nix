{ pkgs }:
let
  src = pkgs.fetchFromGitHub {
    owner = "tweag";
    repo = "ormolu";
    rev = "490720fedccc05c1a8530e29ad9b2b1c77153287";
    sha256 = "0qy8nr7243qdrvsrbn0zr6zyq6kzqnrn2s9df7v42lfqaqg8wjf3";
  };
  ormolu = pkgs.callPackage src { };
in ormolu.ormolu
