{...}: let
  username = "psoewish";
in {
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";

  imports = [
    ./wms/hyprland.nix
    ./terminal
    ./browsers
    ./media
    ./social
  ];

  # No touchy
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
