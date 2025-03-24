{ inputs, pkgs,... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
    systemd.variables = [ "--all" ];
  };

  imports = [
    ./monitors.nix
    ./workspaces.nix
    ./windowrules.nix
    ./config.nix
    ./keybinds.nix
  ];

  home.packages = with pkgs; [
    hypridle
    mpvpaper
    rofi-wayland
    grimblast
    wl-clipboard
    dunst
    waybar
  ];
}
