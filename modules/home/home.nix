{ ... }:

let
  username = "psoewish";

in {
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";

  imports = [
    ./wezterm.nix
    ./fish.nix
    ./cli.nix
    ./helix.nix
  ];
  
  # No touchy
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
