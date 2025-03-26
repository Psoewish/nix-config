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
    grimblast
    wl-clipboard
    dunst
    waybar
  ];

  imports = [
    ./autostart.nix
    ./config.nix
    ./monitors.nix
    ./workspaces.nix
    ./windowrules.nix
    ./keybinds.nix
  ];
}
