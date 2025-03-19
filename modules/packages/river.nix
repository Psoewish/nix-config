{ pkgs, ... }:

{
  programs.river = {
    enable = true;
    xwayland.enable = true;
    extraPackages = [
      rofi-wayland
      grimblast
      wl-clipboard
      dunst
    ];
  };
}
