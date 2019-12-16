{ pkgs }:
derivation {
  name = "kak-plug";
  system = builtins.currentSystem;
  src = pkgs.fetchFromGitHub {
    owner = "andreyorst";
    repo = "plug.kak";
    rev = "337b1f2f39966e9174cba177fc5815bc85c67564";
    sha256 = "1r3k3jrvs4yh3fapzrkirrfwz2h3dy58abm31xi8pqspz81lcfb5";
  };
  builder = "${pkgs.bash}/bin/bash";
  args = [ ./simple.sh ];
  buildInputs = with pkgs; [ coreutils ];
}
