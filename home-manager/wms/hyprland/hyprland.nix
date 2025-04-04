{pkgs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enableXdgAutostart = true;
    systemd.variables = ["--all"];
  };

  home.packages = with pkgs; [
    hypridle
    grimblast
    wl-clipboard
    dunst
    waybar
  ];

  imports = [
    ./config.nix
  ];
}
