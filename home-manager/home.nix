{ ... }:

{
  home.username = "psoewish";
  home.homeDirectory = "/home/psoewish";

  imports = [
    ../themes/rose-pine.nix
  
    ./foot.nix
    ./fish.nix
    ./helix.nix
    ./qutebrowser.nix
  ];

  # Don't touch these
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
