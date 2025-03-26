{ ... }:

let
  username = "psoewish";

in {
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";

  imports = [
    ./wms/hyprland/hyprland.nix
    ./wms/waybar.nix

    ./themes/theme.nix

    ./terminal/wezterm.nix
    ./terminal/fish/fish.nix
    ./terminal/cli.nix
    ./terminal/git.nix
    ./terminal/helix.nix
    ./terminal/yazi.nix
    ./terminal/hyfetch.nix
    ./terminal/pass.nix

    # ./browsers/firefox.nix
    ./browsers/zen-browser.nix
    ./browsers/qutebrowser.nix

    ./media/cider.nix

    ./social/nixcord.nix

    ./misc/rofi.nix
  ];

  # No touchy
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
