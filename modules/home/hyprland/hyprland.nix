{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enableXdgAutostart = true;
    systemd.variables = [ "--all" ];
  };

  home.packages = with pkgs; [
    hypridle
    mpvpaper
    rofi-wayland
    grimblast
    wl-clipboard
    dunst
    waybar
  ];

  imports = [
    ./config.nix
    ./monitors.nix
    ./workspaces.nix
    ./windowrules.nix
    ./keybinds.nix
  ];
}
